import 'package:globus/src/core/utils/app_colors.dart';
import 'package:globus/src/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/app_images.dart';

class ProfileResetPassPage extends StatelessWidget {
  const ProfileResetPassPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Сменить пароль',
          style: AppBarTextStyle.appBarTitleTextStyle,
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(22, 22, 22, 0),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage(AppImages.avatar2),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                'Иванов Иван',
                style: TextStyle(
                    color: AppColors.textBlack,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 35,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'безопасность'.toUpperCase(),
                  style: const TextStyle(
                      color: AppColors.mainGrey,
                      fontSize: 11,
                      letterSpacing: 2),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.textBlack.withOpacity(0.06),
                        spreadRadius: 0,
                        blurRadius: 22,
                        offset: const Offset(0, 4),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(5)),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12)),
                    hintText: "*************",
                    suffixText: "Новый пароль",
                    suffixStyle: const TextStyle(
                        fontSize: 15, color: AppColors.textBlack),
                    hintStyle: const TextStyle(
                        fontSize: 15, color: AppColors.mainGrey),
                  ),
                ),
              ),
             const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.textBlack.withOpacity(0.06),
                        spreadRadius: 0,
                        blurRadius: 22,
                        offset: const Offset(0, 4),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(5)),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12)),
                    hintText: "*************",
                    suffixText: "Повтор пароля",
                    suffixStyle: const TextStyle(
                        fontSize: 15, color: AppColors.textBlack),
                    hintStyle: const TextStyle(
                        fontSize: 15, color: AppColors.mainGrey),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
