import 'package:alfateam/src/core/utils/app_colors.dart';
import 'package:alfateam/src/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget leadingAppBarButton(context, Color? iconColor, {Function? onPop}) {
  return Padding(
      padding: const EdgeInsets.all(8),
      child: MaterialButton(
        height: 45,
        minWidth: 51,
        onPressed: () {
          if (onPop != null) {
            onPop();
          }
          Navigator.pop(context);
        },
        padding: const EdgeInsets.all(5),
        shape: const CircleBorder(),
        child: SvgPicture.asset(
          AppImages.back,
          colorFilter: (iconColor != null)
              ? ColorFilter.mode(iconColor, BlendMode.srcIn)
              : null,
        ),
      ));
}

class AppOrangeButtonWidget extends StatelessWidget {
  final String text;
  final double? height;
  final double? width;
  final void Function() onPressed;
  const AppOrangeButtonWidget(
      {super.key,
      required this.text,
      this.height,
      this.width,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width ?? 296,
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
              backgroundColor: Colors.orange,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              elevation: 0,
              shadowColor: Colors.white),
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ));
  }
}
