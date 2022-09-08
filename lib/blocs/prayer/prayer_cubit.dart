import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:islamic_app/core/utils/next_prayer_algorithm.dart';
import 'package:islamic_app/models/prayer.dart';
import 'package:islamic_app/services/dio_helper/dio_service.dart';
import 'package:meta/meta.dart';

part 'prayer_state.dart';

class PrayerCubit extends Cubit<PrayerState> {
  PrayerCubit() : super(PrayerInitial());

  static PrayerCubit get(context) => BlocProvider.of(context);

  PrayerHub? prayerHub;

  List todayPrayers=[];


 int? secondsForNextPrayer;
  String? nextPrayerName;
  getTodayPrayer() {
    emit(PrayerGetTodayPrayerLoadingState());
    DioHelper.getData(url: 'timingsByAddress',
        query: {
        'method':'5',
          'address':'cairo'
    }).then((value) {
      var jsonDate = jsonDecode(value.data);
      prayerHub = PrayerHub.fromJson(jsonDate);

      print(prayerHub!.data!.timings!.isha);


       addSalahUI(prayerHub!.data!.timings!);
       getNextPrayer();
      emit(PrayerGetTodayPrayerSuccessState());
    }).catchError((error) {
      print(error);
    });
  }

   addSalahUI(Timings prayerTimes) {
     todayPrayers.add(
       PrayerUi(prayerTimes: prayerTimes.fajr, prayerName: 'الفجر'),
     );
     todayPrayers.add(
       PrayerUi(prayerTimes: prayerTimes.dhuhr, prayerName: 'الظهر'),
     );
     todayPrayers.add(
       PrayerUi(prayerTimes: prayerTimes.asr, prayerName: 'العصر'),
     );
     todayPrayers.add(
       PrayerUi(prayerTimes: prayerTimes.maghrib, prayerName: 'المغرب'),
     );
     todayPrayers.add(
       PrayerUi(prayerTimes: prayerTimes.isha, prayerName: 'العشاء'),
     );
   }
  //
   getNextPrayer() {
     int difference = 0;
     int min = 86400;
     int max=0;
     int nextIndex = 0;
     DateTime time = TimeConfig.getCurrentTime();

     String currentTime = time.hour.toString() + ':' + time.minute.toString();
     var format = DateFormat("HH:mm");
     for (int i = 0; i < todayPrayers.length; i++) {
       var one = format.parse(todayPrayers[i].prayerTimes.toString());
       var two = format.parse(currentTime);

       difference = one.difference(two).inSeconds;

       if (difference >= 0) {
         if (difference < min) {
           min = difference;
           nextIndex = i;
         }
       }
       if(difference <0)
         {
           int differenceInPositive=difference.abs();
           if (differenceInPositive > max) {
             max = differenceInPositive;
             nextIndex = i;
           }
         }
     }

     if(difference.isNegative)
       {
         secondsForNextPrayer=max;
         print('eeeeeah dah !'+secondsForNextPrayer.toString());
         emit(PrayerGetNextPrayerState());
       }else
     secondsForNextPrayer= min;
     emit(PrayerGetNextPrayerState());
     nextPrayerName=todayPrayers[nextIndex].prayerName.toString();
     emit(PrayerGetNextPrayerState());
   }
}
