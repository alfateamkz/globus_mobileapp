import 'package:alfateam/src/core/utils/app_colors.dart';
import 'package:alfateam/src/core/utils/app_images.dart';
import 'package:alfateam/src/core/utils/app_styles.dart';
import 'package:alfateam/src/presentation/widgets/profile_page/components/profile_point_person_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePointInfoPage extends StatelessWidget {
  const ProfilePointInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Баллы',
          style: AppBarTextStyle.appBarTitleTextStyle,
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.only(left: 22, right: 22, top: 11),
        children: [
          InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/pointProgress');
              },
              child: const ProfilePointPersonCardWidget()),
          const SizedBox(
            height: 8,
          ),
          RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                  text: '637',
                  style: TextStyle(
                      color: AppColors.mainBlack,
                      fontSize: 11,
                      fontWeight: FontWeight.w700),
                  children: [
                    TextSpan(
                        text: ' баллов до следующего уровня',
                        style: TextStyle(color: AppColors.mainGrey))
                  ])),
          const SizedBox(
            height: 18,
          ),
          const ProfilePointCardWidget(
              point: '+200',
              subtTitle:
                  'Комментарий “Сложно в одной торговой марке найти все средства”',
              title: 'Натуральная косметика  и уход за собой '),
          const ProfilePointCardWidget(
              point: '+300',
              subtTitle: 'Пройден опрос',
              title: 'Оцените наш интернет-магазин'),
          const ProfilePointCardWidget(
              point: '+300',
              subtTitle:
                  'Комментарий “Сложно в одной торговой марке найти все средства”',
              title: 'Есть идея !'),
          const ProfilePointCardWidget(
              point: '+300',
              subtTitle: 'Пройден опрос',
              title: 'Покупка продуктов на маркетплейсах'),
        ],
      ),
    );
  }
}

class ProfilePointCardWidget extends StatelessWidget {
  final String title;
  final String subtTitle;
  final String point;
  const ProfilePointCardWidget(
      {super.key,
      required this.point,
      required this.subtTitle,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 7),
      padding: const EdgeInsets.fromLTRB(16, 11, 19, 9),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
              color: AppColors.textBlack.withOpacity(0.06),
              spreadRadius: 0,
              blurRadius: 22,
              offset: const Offset(0, 4),
            ),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontWeight: FontWeight.w700, color: AppColors.textBlack),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  subtTitle,
                  style: TextStyle(color: AppColors.textGrey),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  '18 июня 2022',
                  style: TextStyle(color: AppColors.mainGrey, fontSize: 11),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              point,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontWeight: FontWeight.w700, color: AppColors.textBlack),
            ),
          )
        ],
      ),
    );
  }
}

