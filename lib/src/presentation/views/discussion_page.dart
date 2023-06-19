import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:globus/src/core/utils/app_images.dart';
import 'package:globus/src/core/utils/app_styles.dart';
import 'package:globus/src/core/utils/app_text.dart';
import 'package:globus/src/presentation/blocs/discussions/discussions_bloc.dart';
import 'package:globus/src/presentation/widgets/components/app_button.dart';
import 'package:globus/src/presentation/widgets/discussion_page/discussion_bonus_card_widget.dart';
import 'package:globus/src/presentation/widgets/discussion_page/discussion_card_widget.dart';
import 'package:flutter/material.dart';

List<DiscussionCardEntity> _card = [
  const DiscussionCardEntity(
    avatar: AppImages.avatar1,
    title: 'Натуральная косметика и средства по уходу за собой',
    time: '25 мая 2022',
    text:
        'В этом разделе мы хотели бы поговорить с вами о НАТУРАЛЬНОЙ КОСМЕТИКЕ. \nПокупаете ли вы натуральную косметику и средства ухода и гигиены? Как вы определяете, что они именно натуральные? На что смотрите прежде всего? \nКакие именно косметические средства вы предпочитаете с натуральным составом? А для каких это не столь важно? \nГде предпочитаете их покупать? От чего зависит - где вы будете приобретать натуральную косметику? \nДля кого вы ее покупаете?',
  ),
  const DiscussionCardEntity(
      avatar: AppImages.avatar1,
      title: 'Иванов Иван',
      time: '2 дня назад',
      text:
          'Я вот тут подумал и понял что ни когда за всю свою жизнь не читал состав ни мыла ни геля для душа..мылится, пенится, не дурно пахнет и ладно :)'),
  const DiscussionCardEntity(
      avatar: AppImages.avatar2,
      title: 'Петр Петров',
      time: '2 дня назад',
      text:
          'Я вот тут подумал и понял что ни когда за всю свою жизнь не читал состав ни мыла ни геля для душа..мылится, пенится, не дурно пахнет и ладно :)')
];

class DiscussionPage extends StatelessWidget {
  const DiscussionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        leading: leadingAppBarButton(context, Colors.white),
        title: const Text(AppText.discussion,
            style: AppBarTextStyle.appBarTitleTextStyle),
      ),
      body: SingleChildScrollView(
        child: BlocBuilder<DiscussionsBloc, DiscussionsState>(
          builder: (context, state) {
            if (state is DiscussionsLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is DiscussionsSuccess) {
              return ListView.builder(
                  itemCount: state.discussions.discussions.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        DiscussionCardWidget(
                            card: state.discussions.discussions[index]),
                        DiscussionBonusCardWidget(
                          card: state.discussions.discussions[index].additional,
                        ),
                      ],
                    );
                  });
            } else {
              return SizedBox();
            }
            // return ListView(
            //   padding: const EdgeInsets.fromLTRB(13, 12, 13, 0),
            //   children: [
            //     DiscussionCardWidget(card: _card[0], withPostImg: true),
            //     const DiscussionBonusCardWidget(
            //       bonusCount: "300",
            //       isGreen: true,
            //     ),
            //     DiscussionCardWidget(card: _card[1]),
            //     const DiscussionBonusCardWidget(
            //       bonusCount: "300",
            //       isGreen: false,
            //     ),
            //     DiscussionCardWidget(card: _card[2], withPostImg: true),
            //   ],
            // );
          },
        ),
      ),
    );
  }
}
