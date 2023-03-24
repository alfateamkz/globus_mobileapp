import 'package:globus/src/core/utils/app_colors.dart';
import 'package:globus/src/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NotificationCardEntity {
  final String text;
  final bool isLike;
  NotificationCardEntity({required this.text, required this.isLike});
}

class NotificationCardWidget extends StatelessWidget {
  final NotificationCardEntity card;
  const NotificationCardWidget({Key? key, required this.card})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: AppColors.textBlack.withOpacity(0.06),
              spreadRadius: 0,
              blurRadius: 22,
              offset: const Offset(0, 4),
            ),
          ]),
      child: ListTile(
          style: ListTileStyle.drawer,
          contentPadding: const EdgeInsets.fromLTRB(23, 18, 17, 16),
          horizontalTitleGap: 0,
          leading: (card.isLike)
              ? SvgPicture.asset(
                  AppImages.likeHeart,
                  colorFilter:
                      const ColorFilter.mode(AppColors.mainOrange, BlendMode.srcIn),
                )
              : SvgPicture.asset(AppImages.comment),
          title: Text(card.text,
              style: const TextStyle(color: AppColors.textBlack, fontSize: 15)),
          subtitle: const Text('18 июня 2022',
              style: TextStyle(color: AppColors.textGrey, fontSize: 13))),
    );
  }
}
