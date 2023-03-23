import 'package:alfateam/src/core/utils/app_colors.dart';
import 'package:alfateam/src/core/utils/app_images.dart';
import 'package:alfateam/src/core/utils/app_styles.dart';
import 'package:alfateam/src/presentation/widgets/components/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class VotingPage extends StatelessWidget {
  const VotingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Голосование',
          style: AppBarTextStyle.appBarTitleTextStyle,
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(15, 26, 15, 0),
        child: Column(
          children: [
            const Text(
              'Есть идея',
              style: TextStyle(color: AppColors.textBlack, fontSize: 16),
            ),
            const SizedBox(
              height: 25,
            ),
            const VotingCardWidget(
              title: 'Продавать органически выращенные овощи',
              isLiked: true,
            ),
            const SizedBox(
              height: 12,
            ),
            const VotingCardWidget(
              title: 'Больше вегетарианской продукции',
              isLiked: true,
            ),
            const SizedBox(
              height: 12,
            ),
            const VotingCardWidget(
              title: 'Расширить раздел дача / сад',
              isLiked: false,
            ),
            const SizedBox(
              height: 12,
            ),
            const VotingCardWidget(
              title: 'Игровую комнату в ресторане сделать',
              isLiked: false,
            ),
            const SizedBox(
              height: 36,
            ),
            AppOrangeButtonWidget(
                height: 55,
                width: 219,
                text: 'Предложить свою идею',
                onPressed: () {
                  Navigator.pushNamed(context, '/newIdea');
                })
          ],
        ),
      ),
    );
  }
}

class VotingCardWidget extends StatelessWidget {
  final String title;
  final bool? isLiked;
  const VotingCardWidget({super.key, this.isLiked, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(21, 11, 21, 11),
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
          borderRadius: BorderRadius.circular(16)),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      color: AppColors.textBlack,
                      fontWeight: FontWeight.w700,
                      fontSize: 15),
                ),
                const SizedBox(
                  height: 9,
                ),
                Row(
                  children: [
                    SvgPicture.asset(AppImages.comment),
                    const SizedBox(
                      width: 9,
                    ),
                    Text(
                      "23 Комментария",
                      style: const TextStyle(
                          color: AppColors.textBlack,
                          fontWeight: FontWeight.w300,
                          fontSize: 15),
                    ),
                  ],
                )
              ],
            ),
          ),
          Column(
            children: [
              SvgPicture.asset(
                AppImages.like,
                colorFilter: (isLiked == true)
                    ? ColorFilter.mode(AppColors.mainOrange, BlendMode.srcIn)
                    : null,
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                '16 голосов',
                style: (isLiked == true)
                    ? TextStyle(color: AppColors.mainOrange)
                    : TextStyle(color: AppColors.textBlack),
              )
            ],
          )
        ],
      ),
    );
  }
}
