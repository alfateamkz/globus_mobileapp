import 'package:globus/src/core/utils/app_colors.dart';
import 'package:globus/src/core/utils/app_images.dart';
import 'package:globus/src/core/utils/app_text.dart';
import 'package:globus/src/presentation/widgets/auth_page/widgets/auth_page_button_widget.dart';
import 'package:flutter/material.dart';

class AuthPageWidget extends StatelessWidget {
  const AuthPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 179,
        ),
        const Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: 280,
            height: 52,
            child: Text(
              AppText.authWelcome,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: AppColors.mainBlack,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 42,
        ),
        const Align(
          alignment: Alignment.center,
          child: SizedBox(
              width: 258,
              height: 34,
              child: Text(
                AppText.authRegisterTitle,
                style: TextStyle(fontSize: 14, color: AppColors.textGrey),
              )),
        ),
        const SizedBox(
          height: 17,
        ),
        AuthPageButtonWidget(
          onPressed: () {
            Navigator.pushNamed(context, '/register');
          },
          text: AppText.authRegister,
          height: 54,
        ),
        const SizedBox(
          height: 39,
        ),
        const Align(
          alignment: Alignment.center,
          child: SizedBox(
              width: 281,
              height: 34,
              child: Text(
                AppText.authFromTitle,
                style: TextStyle(fontSize: 14, color: AppColors.textGrey),
              )),
        ),
        const SizedBox(
          height: 10,
        ),
        AuthPageButtonWidget(
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
          },
          text: AppText.authFromMail,
          icon: AppImages.mail,
        ),
        const SizedBox(
          height: 23,
        ),
        AuthPageButtonWidget(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
            },
            text: AppText.authFromVk,
            icon: AppImages.vk),
        const SizedBox(
          height: 23,
        ),
        AuthPageButtonWidget(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
            },
            text: AppText.authFromYa,
            icon: AppImages.yandex),
        const SizedBox(
          height: 31,
        ),
        const Align(
          alignment: Alignment.center,
          child: SizedBox(
              width: 239,
              height: 32,
              child: Text(
                AppText.authPolicyTitle,
                style: TextStyle(
                  color: AppColors.textGrey,
                  fontSize: 12,
                ),
                textAlign: TextAlign.center,
              )),
        ),
      ],
    );
  }
}
