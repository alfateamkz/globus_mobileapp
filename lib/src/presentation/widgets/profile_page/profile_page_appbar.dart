import 'package:alfateam/src/core/utils/app_images.dart';
import 'package:alfateam/src/core/utils/app_styles.dart';
import 'package:alfateam/src/core/utils/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePageAppBar extends StatelessWidget {
  const ProfilePageAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'Профиль',
        style:AppBarTextStyle.appBarTitleTextStyle,
      ),
      elevation: 0,
      centerTitle: true,
    );
  }
}
