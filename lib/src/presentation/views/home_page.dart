import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:globus/src/core/utils/app_images.dart';
import 'package:globus/src/presentation/blocs/activities/activities_bloc.dart';
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
    return BlocBuilder<ActivitiesBloc, ActivitiesState>(
      builder: (context, state) {
        if (state is ActivitiesLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is ActivitiesSuccess) {
          return SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(13, 12, 13, 0),
            child: Column(
              children: [
                ListView.builder(
                    itemCount: state.activities.activities.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.zero,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: HomeCardWidget(
                            item: state.activities.activities[index]),
                      );
                    }),
                const HomeRatingWidget(),
              ],
            ),
          );
          // return ListView.builder(
          //   padding: const EdgeInsets.fromLTRB(13, 12, 13, 0),
          //   children: [
          //     Column(children: [
          //       ...state.activities.activities.map((e) => Padding(
          //
          //           child: HomeCardWidget(item: e)))
          //     ]),
          //     const HomeRatingWidget(),
          //   ],
          // );
        } else {
          return SizedBox();
        }
      },
    );
  }
}
