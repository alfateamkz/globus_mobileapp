import 'package:globus/src/core/utils/app_colors.dart';
import 'package:globus/src/core/utils/app_images.dart';
import 'package:globus/src/presentation/widgets/profile_page/profile_page_widgets.dart';
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
          children: [
            Expanded(
              child: ProfilePageCardWidget(
                onTap: () {
                  Navigator.pushNamed(context, '/pointInfo');
                },
                icon: AppImages.starCircle,
                title: '383',
                topTitle: 'баллы',
                iconColor: AppColors.mainOrange,
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: ProfilePageCardWidget(
                onTap: () {},
                icon: AppImages.money,
                title: '1000 р',
                topTitle: 'деньги',
                iconColor: AppColors.mainOrange,
              ),
            )
          ],
        ),
        ProfilePageCardWidget(
          onTap: () {
            Navigator.pushNamed(context, '/pointInfo');
          },
          icon: AppImages.achievement,
          topTitle: 'статус',
          title: 'Эксперт',
          iconColor: AppColors.mainOrange,
          additionalText: '137 баллов \nдо следующего уровня',
        ),
        ProfilePageCardWidget(
          onTap: () {
            Navigator.pushNamed(context, '/privacy');
          },
          icon: AppImages.blank,
          title: 'Правила участия в сообществе',
        ),
        ProfilePageCardWidget(
          onTap: () {
            Navigator.pushNamed(context, '/privacy');
          },
          icon: AppImages.blank,
          title: 'Пользовательское соглашение',
        ),
        Row(
          children: [
            Expanded(
              child: ProfilePageCardWidget(
                onTap: () {
                  Navigator.pushNamed(context, '/resetPass');
                },
                icon: AppImages.lock,
                titleColor: AppColors.mainOrange,
                title: 'Изменить пароль',
                iconColor: AppColors.mainOrange,
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            const Expanded(
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
