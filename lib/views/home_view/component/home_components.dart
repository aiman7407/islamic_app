import 'package:flutter/material.dart';
import 'package:islamic_app/core/utils/size_config.dart';

class HomeHeaderCard extends StatelessWidget {

  final String day;
  final String year;
  final String month;

  HomeHeaderCard({required this.day, required this.year, required this.month});

  @override
  Widget build(BuildContext context) {
    return Container(
      width:SizeConfig.screenWidth,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                'assets/images/home_header.png',
              )),
          borderRadius: BorderRadius.circular(10)),
      height: SizeConfig.defaultSize!*15.5,
      child: Row(
        textDirection: TextDirection.rtl,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              textDirection: TextDirection.rtl,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  textDirection: TextDirection.rtl,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('اليوم',
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 20)),
                    Container(
                      width: SizeConfig.defaultSize!*15.1,
                      height: SizeConfig.defaultSize!*6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.white, width: 1.5)),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                month,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline1!
                                    .copyWith(fontSize: 18),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 9),
                              child: VerticalDivider(
                                width: 10,
                                color: Colors.white,
                                thickness: 1.5,
                              ),
                            ),
                            Text(day,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline1!
                                    .copyWith(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Text(year,
                    style: Theme.of(context)
                        .textTheme
                        .headline1
                        ?.copyWith(fontSize: 15, fontWeight: FontWeight.bold))
              ],
            ),
          )
        ],
      ),
    );
  }
}
