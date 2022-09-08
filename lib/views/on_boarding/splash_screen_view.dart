import 'package:flutter/material.dart';
import 'package:islamic_app/core/utils/naviagtion.dart';
import 'package:islamic_app/core/utils/size_config.dart';
import '../home_view/home_view.dart';

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    finishSplash(context);

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/splash.png'),
                fit: BoxFit.cover)),
      ),
    );
  }

  finishSplash(context)
  async{
    await Future.delayed(Duration(milliseconds: 3000), () {
      AppNavigator.customNavigator(context: context, screen: HomeView(), finish: true);
    });

  }



}
