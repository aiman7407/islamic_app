import 'package:buildcondition/buildcondition.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:islamic_app/blocs/prayer/prayer_cubit.dart';
import 'package:islamic_app/blocs/prayer/prayer_cubit.dart';
import 'package:islamic_app/core/components/space.dart';
import 'package:islamic_app/core/utils/size_config.dart';
import 'package:islamic_app/src/colors.dart';
import 'package:islamic_app/views/home_view/component/home_components.dart';
import 'package:islamic_app/views/home_view/component/next_prayer_card.dart';
import 'package:islamic_app/views/home_view/component/custum_card.dart';

import 'component/next_prayer_timer.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
        body: OfflineBuilder(connectivityBuilder: (
          BuildContext context,
          ConnectivityResult connectivity,
          Widget child,
        ) {
          final bool connected = connectivity != ConnectivityResult.none;
          if (connected) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: BlocConsumer<PrayerCubit, PrayerState>(
                listener: (context, state) {
                  // TODO: implement listener
                },
                builder: (context, state) {
                  var cubit = PrayerCubit.get(context);
                  if(state is PrayerGetTodayPrayerErrorState)
                    return Text('ERROR PLEASE TRY AGAIN LATER',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 60
                    ),
                    );
                   return
                     BuildCondition(
                    condition: cubit.prayerHub != null,
                    fallback: (context) =>
                        Center(child: CupertinoActivityIndicator()),
                    builder: (context) => Column(
                      children: [
                        VerticalSpace(value:2),
                        HomeHeaderCard(
                          day: cubit.prayerHub!.data!.date!.hijri!.day!,
                          year:cubit.prayerHub!.data!.date!.hijri!.year!,
                          month:cubit.prayerHub!.data!.date!.hijri!.month!.arabic! ,
                        ),
                        VerticalSpace(value: 5),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            children: [
                             NextPrayerTimerCard(
                               prayerName: cubit.nextPrayerName.toString(),
                               levelClock: cubit.secondsForNextPrayer!,),

                              VerticalSpace(value: 2,),
                              Column(
                                children: cubit.todayPrayers.map((e) {
                                  return CustomCard(
                                      name: e.prayerName.toString(),
                                      time: e.prayerTimes.toString());
                                }).toList(),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            );
          } else {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/images/connection_lost.png',
                ),
                Text('تحقق من اتصال الانترنت لديك !',
                textDirection: TextDirection.rtl,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize:SizeConfig.defaultSize!*2.5),
                )
              ],
            );
          }
        },
        child: CupertinoActivityIndicator(
          animating: true,
        ) ,
        ),

    );
  }
}
