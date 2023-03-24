import 'package:globus/src/core/utils/app_colors.dart';
import 'package:globus/src/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePageUserCardWidget extends StatelessWidget {
  const ProfilePageUserCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/personalInfo');
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: AppColors.textBlack.withOpacity(0.06),
                spreadRadius: 0,
                blurRadius: 22,
                offset: const Offset(0, 4),
              ),
            ]),
        child: ListTile(
          horizontalTitleGap: 33,
          leading: CircleAvatar(
              radius: 30,
              child: Image.asset(
                AppImages.avatar2,
                width: 58,
              )),
          contentPadding: const EdgeInsets.fromLTRB(11, 5, 3, 2),
          subtitle: const Padding(
            padding: EdgeInsets.only(top: 7),
            child: Text(
              "Персональная информация",
              style: TextStyle(
                  color: AppColors.mainOrange,
                  fontSize: 13,
                  fontWeight: FontWeight.w300),
            ),
          ),
          title: const Text(
            'Иванов Иван',
            style: TextStyle(
                color: AppColors.textBlack,
                fontSize: 15,
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}

class ProfilePageCardWidget extends StatelessWidget {
  final String icon;
  final String? topTitle;
  final String title;
  final String? additionalText;
  final Color? iconColor;
  final Color? titleColor;
  final void Function()? onTap;
  const ProfilePageCardWidget(
      {Key? key,
      required this.icon,
      required this.title,
      this.topTitle,
      this.iconColor,
      this.additionalText,
      this.onTap,
      this.titleColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: (topTitle != null)
            ? const EdgeInsets.fromLTRB(17, 10, 5, 10)
            : const EdgeInsets.fromLTRB(17, 16, 5, 16),
        margin: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: AppColors.textBlack.withOpacity(0.06),
                spreadRadius: 0,
                blurRadius: 22,
                offset: const Offset(0, 4),
              ),
            ]),
        child: Row(
          children: [
            SvgPicture.asset(icon,
                colorFilter: iconColor != null
                    ? ColorFilter.mode(
                        iconColor ?? Colors.orange, BlendMode.srcIn)
                    : null),
            const SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (topTitle != null) ...[
                  Text(
                    topTitle ?? '',
                    style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w300,
                        color: AppColors.mainGrey),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: AppColors.mainOrange),
                  )
                ]
              ],
            ),
            if (additionalText != null) ...[
              const SizedBox(
                width: 50,
              ),
              Text(
                additionalText ?? '',
                style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    color: AppColors.mainGrey),
              )
            ],
            if (topTitle == null)
              Text(
                title,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: titleColor ?? AppColors.textBlack),
              )
          ],
        ),
      ),
    );
  }
}
