import 'package:flutter/material.dart';
import 'package:islamic_app/core/components/space.dart';
import 'package:islamic_app/core/utils/size_config.dart';
import 'package:islamic_app/models/doaa.dart';
import 'package:islamic_app/src/colors.dart';
import 'package:islamic_app/views/doaa/components/text_header.dart';

class SingleDoaaView extends StatelessWidget {
  Doaa doaa;

  SingleDoaaView({required this.doaa});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 17),
        child: Column(

          textDirection: TextDirection.rtl,
          children: [

            TextHeader(),
          Material(
              borderRadius: BorderRadius.circular(10),
              elevation: 7,
              child: Container(
                margin: EdgeInsets.all(10),
                height: SizeConfig.defaultSize!*5.3,
                width: SizeConfig.screenWidth,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32)
                ),
                child: Row(
                  mainAxisAlignment:

                  MainAxisAlignment.center,
                  textDirection: TextDirection.rtl,
                  children: [
                    Text(doaa.name,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 25),
                    ),

                  ],
                ),
              )),
            VerticalSpace(
              value: 1,
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.kPrimaryColor,
                        borderRadius: BorderRadius.circular(20)),
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(8),
                    child: Text(
                      doaa.value,
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
