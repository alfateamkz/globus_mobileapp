import 'package:alfateam/src/core/utils/app_styles.dart';
import 'package:alfateam/src/core/utils/app_text.dart';
import 'package:flutter/material.dart';

class NotificationPageAppBar extends StatelessWidget {
  const NotificationPageAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        AppText.appBarNotification,
        style:AppBarTextStyle.appBarTitleTextStyle,
      ),
      elevation: 0,
      centerTitle: true,
    );
  }
}
