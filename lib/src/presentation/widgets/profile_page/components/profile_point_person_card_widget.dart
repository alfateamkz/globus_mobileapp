import 'package:globus/src/core/utils/app_colors.dart';
import 'package:globus/src/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePointPersonCardWidget extends StatelessWidget {
  const ProfilePointPersonCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 83,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: AppColors.mainOrange, borderRadius: BorderRadius.circular(16)),
      child: ListTile(
        leading: const CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage(AppImages.avatar2),
        ),
        title: const Text(
          'Иванов Иван',
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
        ),
        subtitle: Row(
          children: [
            SvgPicture.asset(AppImages.cristalYellow),
            const SizedBox(
              width: 5,
            ),
            Text(
              "Супер эксперт",
              style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 11,
                  fontWeight: FontWeight.w700),
            )
          ],
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '363',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "балла",
              style: TextStyle(
                  color: Colors.white.withOpacity(0.54),
                  fontSize: 11,
                  fontWeight: FontWeight.w700),
            )
          ],
        ),
      ),
    );
  }
}
