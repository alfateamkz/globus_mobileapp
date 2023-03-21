import 'package:alfateam/src/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterPageTextField extends StatelessWidget {
  final String icon;
  final String text;
  const RegisterPageTextField({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 296,
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderSide: const BorderSide(color: AppColors.mainGrey),
                borderRadius: BorderRadius.circular(12)),
            hintText: text,
            hintStyle:
                const TextStyle(fontSize: 15, color: AppColors.textBlack),
            prefixIcon: Padding(
              padding: const EdgeInsets.fromLTRB(24, 22, 15, 22),
              child: SvgPicture.asset(
                icon,
                width: 20,
                height: 16,
              ),
            )),
      ),
    );
  }
}
