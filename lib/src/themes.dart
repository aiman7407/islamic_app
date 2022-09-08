import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/src/colors.dart';



ThemeData kLightTheme=ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: AppColors.kPrimaryColor,
    //primarySwatch: kPrimaryColor,
    appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
            color: AppColors.kPrimaryColor
        ),
        backwardsCompatibility: false,
        systemOverlayStyle: SystemUiOverlayStyle(

            statusBarIconBrightness: Brightness.dark ,
            statusBarColor: Colors.white
        ),
        color: Colors.white,
        elevation: 0,
        titleTextStyle: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)
    ),

    textTheme: TextTheme(
      headline1:TextStyle(
        fontFamily: 'AdvertisingBold',
          fontSize: 18,
          fontWeight: FontWeight.w200,
          color: Colors.white
      ) ,
        bodyText1: TextStyle(
            fontFamily: 'AdvertisingBold',

            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black
        )
    ),
    //fontFamily: 'AdvertisingBold'
);





// bottomNavigationBarTheme: BottomNavigationBarThemeData(
// type: BottomNavigationBarType.fixed,
// selectedItemColor: kPrimaryColor,
// elevation: 20,
// backgroundColor: Colors.white,
// unselectedItemColor: Colors.grey
// ),
//