import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islamic_app/core/components/space.dart';
import 'package:islamic_app/core/utils/naviagtion.dart';
import 'package:islamic_app/core/utils/size_config.dart';
import 'package:islamic_app/models/doaa.dart';
import 'package:islamic_app/src/colors.dart';
import 'package:islamic_app/views/home_view/component/custum_card.dart';
import 'package:islamic_app/views/single_doaa/single_doaa_view.dart';

import 'components/text_header.dart';

class DoaaView extends StatelessWidget {
  const DoaaView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          VerticalSpace(value: 3),
          TextHeader(),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: Doaa.doaas.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: () {
                      AppNavigator.customNavigator(
                          context: context,
                          screen: SingleDoaaView(doaa: Doaa.doaas[index]),
                          finish: false);
                    },
                    child: CustomCard(
                      name: Doaa.doaas[index].name,
                    ));
              },
            ),
          )
        ],
      ),
    );
  }
}
