import 'package:flutter/material.dart';
import 'package:islamic_app/src/colors.dart';

class TextHeader extends StatelessWidget {
  const TextHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'الأدعيه والأذكار',
      style: TextStyle(
          color: AppColors.kPrimaryColor,
          fontSize: 45,
          fontWeight: FontWeight.bold),
    );
  }
}
