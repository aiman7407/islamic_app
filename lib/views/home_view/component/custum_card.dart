import 'package:flutter/material.dart';
import 'package:islamic_app/core/utils/size_config.dart';
class CustomCard extends StatelessWidget {


  final String name;
  final String? time ;


  CustomCard({required this.name,  this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
          borderRadius: BorderRadius.circular(32),
          elevation: 3,
          child: Container(
            margin: EdgeInsets.all(10),
            height: SizeConfig.defaultSize!*5.3,
            width: SizeConfig.screenWidth,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32)
            ),
            child: Row(
              mainAxisAlignment:

              time==null ?MainAxisAlignment.center:MainAxisAlignment.spaceAround,
              textDirection: TextDirection.rtl,
              children: [
                Text(name,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 25),
                ),
                Text(time??'',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 25,
                  fontWeight: FontWeight.w400,

                ),
                ),
              ],
            ),
          )),
    );
  }
}
