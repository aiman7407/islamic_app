import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamic_app/blocs/prayer/prayer_cubit.dart';
import 'package:islamic_app/src/themes.dart';
import 'package:islamic_app/views/home_view/home_view.dart';
import 'package:islamic_app/views/home_view/test_view.dart';
import '../views/on_boarding/splash_screen_view.dart';


class AppRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>PrayerCubit()..getTodayPrayer())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Directionality(
            textDirection: TextDirection.rtl,
            child:TestView(title: 'lol',)

         //   HomeView()
        ) ,
        theme: kLightTheme,

      ),
    );
  }
}

/**

* ? you will use it in the future
 *  return MultiBlocProvider(
providers: [
BlocProvider(create: (BuildContext context) => ShopScreenCubit()..getHomeData()),
BlocProvider(create: (BuildContext context) => LoginCubit()),
],
child: MaterialApp(



 */