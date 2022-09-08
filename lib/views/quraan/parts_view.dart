import 'package:flutter/material.dart';
import 'package:islamic_app/core/utils/naviagtion.dart';
import 'package:islamic_app/core/utils/size_config.dart';
import 'package:islamic_app/models/quraan.dart';
import 'parts_details.dart';

class PartsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Divider(
            thickness: 2,
          ),
        );
      },
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) =>
          buildPartName(index, context, quranParts),
      itemCount: 30,
    );
  }

  Widget buildPartName(int index, context, List list) => InkWell(
        onTap: () {
          int first = -1;
          int last = 0;
          for (int i = 0; i < Quraan.quranData.length; i++) {
            if (Quraan.quranData[i].part == quranParts[index]) {
              if (first == -1) {
                first = i;
              }
              last = i;
            }
          }
          debugPrint(first.toString() + " " + last.toString());
          AppNavigator.customNavigator(
              context: context,
              screen: Directionality(
                textDirection: TextDirection.rtl,
                child: PartDetails(
                  title: list[index],
                  first: first,
                  last: last,
                ),
              ),
              finish: false);
        },
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            textDirection: TextDirection.rtl,
            children: [
              CircleAvatar(
                backgroundColor: Colors.black,
                child: Text(
                  '${index + 1}',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Text(list[index],
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: SizeConfig.defaultSize! * 3)),
              Spacer(),
              Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            ],
          ),
        ),
      );
}
