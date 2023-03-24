import 'package:globus/src/core/utils/app_images.dart';
import 'package:globus/src/presentation/widgets/home_page/home_card_widget.dart';
import 'package:globus/src/presentation/widgets/home_page/home_rating_widget.dart';
import 'package:flutter/material.dart';

final List<List> homeCard = [
  [
    AppImages.home1,
    'Натуральная косметика и средства по уходу за собой',
    '🔥 Участвовать в дискуссии'
  ],
  [
    AppImages.home2,
    'Покупка продуктов питания на маркетплейсах',
    'Пройти опрос',
  ],
  [
    AppImages.home3,
    'Встреча управляющего с экперта. Климовск',
    'Читать новость'
  ],
  [AppImages.home4, 'Оцените удобство нашего сайта', 'Выполнено']
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(13, 12, 13, 0),
      children: [
        Column(children: [
          ...homeCard.map((e) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: HomeCardWidget(item: e)))
        ]),
       const HomeRatingWidget(),
      ],
    );
  }
}
