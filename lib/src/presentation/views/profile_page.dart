import 'package:alfateam/src/core/utils/app_colors.dart';
import 'package:alfateam/src/core/utils/app_images.dart';
import 'package:alfateam/src/presentation/widgets/profile_page/profile_page_widgets.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(13, 12, 13, 0),
      children: [
        const ProfilePageUserCardWidget(),
        Row(
          children: const [
            Expanded(
              child: ProfilePageCardWidget(
                icon: AppImages.starCircle,
                title: '383',
                topTitle: 'баллы',
                iconColor: AppColors.mainOrange,
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
              child: ProfilePageCardWidget(
                icon: AppImages.money,
                title: '1000 р',
                topTitle: 'деньги',
                iconColor: AppColors.mainOrange,
              ),
            )
          ],
        ),
        const ProfilePageCardWidget(
          icon: AppImages.achievement,
          topTitle: 'статус',
          title: 'Эксперт',
          iconColor: AppColors.mainOrange,
          additionalText: '137 баллов \nдо следующего уровня',
        ),
        const ProfilePageCardWidget(
          icon: AppImages.blank,
          title: 'Правила участия в сообществе',
        ),
        const ProfilePageCardWidget(
          icon: AppImages.blank,
          title: 'Пользовательское соглашение',
        ),
        Row(
          children: const [
            Expanded(
              child: ProfilePageCardWidget(
                icon: AppImages.lock,
                titleColor: AppColors.mainOrange,
                title: 'Изменить пароль',
                iconColor: AppColors.mainOrange,
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
              child: ProfilePageCardWidget(
                icon: AppImages.exit,
                titleColor: AppColors.mainOrange,
                title: 'Выйти',
                iconColor: AppColors.mainOrange,
              ),
            )
          ],
        ),
      ],
    );
  }
}
