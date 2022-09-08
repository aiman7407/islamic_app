import 'package:flutter/material.dart';
import 'package:islamic_app/core/utils/size_config.dart';
import 'package:islamic_app/src/colors.dart';

class NextPrayerCard extends StatelessWidget {

  String time ;
  String prayerName;
  NextPrayerCard({required this.time,
  required this.prayerName
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: SizeConfig.screenWidth,
        height: SizeConfig.defaultSize!*12,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Color(0xffEF3E29),
              AppColors.kPrimaryColor,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('باقي على صلاة $prayerName ',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 25),
            ),
            Text(time.toString(),
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 40,
            fontWeight: FontWeight.bold
            ),
            )
          ],
        ),
      ),
    );
  }
}
