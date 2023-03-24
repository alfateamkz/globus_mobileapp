
import 'package:globus/src/core/utils/app_styles.dart';

import 'package:flutter/material.dart';


class ProfilePageAppBar extends StatelessWidget {
  const ProfilePageAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'Профиль',
        style: AppBarTextStyle.appBarTitleTextStyle,
      ),
      elevation: 0,
      centerTitle: true,
    );
  }
}
