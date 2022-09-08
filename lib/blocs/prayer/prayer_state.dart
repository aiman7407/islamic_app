part of 'prayer_cubit.dart';

@immutable
abstract class PrayerState {}

class PrayerInitial extends PrayerState {}


class PrayerGetTodayPrayerSuccessState extends PrayerState {}
class PrayerGetTodayPrayerLoadingState extends PrayerState {}
class PrayerGetTodayPrayerErrorState extends PrayerState {}
class PrayerGetNextPrayerState extends PrayerState {}
