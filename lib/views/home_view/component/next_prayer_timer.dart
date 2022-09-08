import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamic_app/blocs/prayer/prayer_cubit.dart';
import 'package:islamic_app/views/home_view/component/next_prayer_card.dart';

class NextPrayerTimerCard extends StatefulWidget {
  final int levelClock;

  final String prayerName;

  NextPrayerTimerCard({required this.levelClock, required this.prayerName});

  @override
  _NextPrayerTimerCardState createState() => _NextPrayerTimerCardState();
}

class _NextPrayerTimerCardState extends State<NextPrayerTimerCard>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this,
        duration: Duration(
            seconds: widget
                .levelClock) // gameData.levelClock is a user entered number elsewhere in the applciation
        );

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PrayerCubit, PrayerState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit = PrayerCubit.get(context);
        return Countdown(
          controller: _controller,
          prayerName: widget.prayerName,
          animation: StepTween(
            begin: cubit.secondsForNextPrayer,
            end: 0,
          ).animate(_controller),
        );
      },
    );
  }
}

class Countdown extends AnimatedWidget {
  AnimationController controller;

  final prayerName;

  Countdown(
      {required this.prayerName,
      required this.animation,
      required this.controller})
      : super(listenable: animation);
  Animation<int> animation;

  @override
  build(BuildContext context) {
    Duration clockTimer = Duration(seconds: animation.value);

    String timerText =
        '${clockTimer.inHours.remainder(60).toString().padLeft(2, '0')}:${clockTimer.inMinutes.remainder(60).toString().padLeft(2, '0')}:${clockTimer.inSeconds.remainder(60).toString().padLeft(2, '0')}';
    if (clockTimer.inHours == 0 &&
        clockTimer.inMinutes == 0 &&
        clockTimer.inSeconds == 0) {
      print('error time is 0 ');
      PrayerCubit.get(context).getNextPrayer();
      controller.reset();
      controller.duration =
          Duration(seconds: PrayerCubit.get(context).secondsForNextPrayer!);
      controller.forward();
    }

    //print('animation.value  ${animation.value} ');
    // print('inMinutes ${clockTimer.inMinutes.toString()}');
    // print('inSeconds ${clockTimer.inSeconds.toString()}');
    // print('inSeconds.remainder ${clockTimer.inSeconds.remainder(60).toString()}');

    return NextPrayerCard(prayerName: prayerName, time: timerText);

  }
}
