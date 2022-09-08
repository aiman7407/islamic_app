import 'package:flutter/material.dart';
import 'package:islamic_app/core/utils/naviagtion.dart';
import 'package:islamic_app/core/utils/size_config.dart';
import 'package:islamic_app/models/quraan.dart';
import 'package:islamic_app/views/quraan/quraan_view.dart';

class PartDetails extends StatelessWidget {
  String title;
  int first;
  int last;
  PartDetails({
    required this.title,
    required this.first,
    required this.last,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            for (int i = first; i <= last; ++i)
              buildSurah(i, last, context)
          ],
        ),
      ),
    );
  }

  Widget buildSurah(int index, int last, context) => InkWell(
    onTap: () {
     AppNavigator.customNavigator(
        context:context,
        screen:Directionality(
          textDirection: TextDirection.rtl,
          child: QuranView(
            quran: Quraan.quranData[index].content!,
            header: Quraan.quranData[index].name!,
          ),
        ),
       finish: false
      );
    },
    child: Container(


      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          textDirection: TextDirection.rtl,
          children: [
            Text(
                'سورة ${Quraan.quranData[index].name}',
                style: TextStyle(
                    color: Colors.black,
                    fontSize:SizeConfig.defaultSize!*3
                )
            ),
            Spacer(),
            Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ],
        ),
      ),
    ),
  );
}
