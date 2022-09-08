import 'package:flutter/material.dart';
class AppColors{

  static const  Color kPrimaryColor= Color(0xffFA7131);
  static const Gradient myGradient= LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [
      Color(0xffEF3E29),
      AppColors.kPrimaryColor,
    ],
  );
}