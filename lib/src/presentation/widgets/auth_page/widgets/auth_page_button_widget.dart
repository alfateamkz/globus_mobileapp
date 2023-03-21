import 'package:alfateam/src/core/utils/app_colors.dart';
import 'package:alfateam/src/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthPageButtonWidget extends StatelessWidget {
  final String text;
  final String? icon;
  final double? height;
  final void Function() onPressed;
  const AuthPageButtonWidget(
      {super.key,
      required this.text,
      this.icon,
      this.height,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 296,
        height: height ?? 60,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppColors.textBlack.withOpacity(0.12),
              spreadRadius: 0,
              blurRadius: 27,
              offset: const Offset(0, 12),
            ),
          ],
        ),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              elevation: 0,
              shadowColor: AppColors.textBlack),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null) SvgPicture.asset(icon ?? AppImages.back),
              if (icon != null)
                const SizedBox(
                  width: 13,
                ),
              Text(
                text,
                style: const TextStyle(
                  color: AppColors.textBlack,
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ));
  }
}
