import 'package:globus/src/core/utils/app_colors.dart';
import 'package:globus/src/core/utils/app_images.dart';
import 'package:globus/src/core/utils/app_styles.dart';
import 'package:globus/src/presentation/widgets/components/app_button.dart';
import 'package:flutter/material.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<int> quizLength = [1, 2, 3, 4, 5];
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Опрос',
          style: AppBarTextStyle.appBarTitleTextStyle,
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(17, 21, 17, 0),
        child: Container(
          padding: const EdgeInsets.fromLTRB(19, 27, 19, 44),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: AppColors.textBlack.withOpacity(0.06),
                  spreadRadius: 0,
                  blurRadius: 22,
                  offset: const Offset(0, 4),
                ),
              ]),
          child: Column(
            children: [
              const Text(
                'Насколько удобно вам покупать товары на маркетплейсах?',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: AppColors.textBlack,
                    fontSize: 17),
              ),
              const SizedBox(
                height: 17,
              ),
              const Text(
                'Lorem ipsum dolor sit amet consectetur adipiscmg elit ornare tortor',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: AppColors.textGrey,
                    fontSize: 15),
              ),
              const SizedBox(
                height: 22,
              ),
              Image.asset(AppImages.post1),
              const SizedBox(
                height: 22,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (var i in quizLength)
                    Container(
                      margin: const EdgeInsets.only(left: 11),
                      width: 52,
                      alignment: Alignment.center,
                      height: 52,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.textBlack.withOpacity(0.06),
                              spreadRadius: 0,
                              blurRadius: 22,
                              offset: const Offset(0, 4),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white),
                      child: Text(i.toString()),
                    ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                   Text(
                    'Не удобный',
                    style: TextStyle(
                        color: AppColors.textBlack,
                        fontSize: 12,
                        fontWeight: FontWeight.w700),
                  ),
                   Text(
                    'Очень удобно',
                    style: TextStyle(
                        color: AppColors.textBlack,
                        fontSize: 12,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              AppOrangeButtonWidget(
                  width: 151, height: 55, text: 'Дальше', onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
