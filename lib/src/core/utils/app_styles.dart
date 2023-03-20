import 'package:alfateam/src/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

abstract class CompanyPageStyle {
  static const companyButtonTextStyle = TextStyle(
      color: AppColors.mainBlue, fontSize: 18, fontWeight: FontWeight.w600);
}

abstract class SettingPageStyle {
  static const changeLangTextStyle = TextStyle(
      color: AppColors.mainBlue, fontSize: 16, fontWeight: FontWeight.w700);
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
