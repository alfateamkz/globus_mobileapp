import 'package:globus/src/core/utils/app_colors.dart';
import 'package:globus/src/core/utils/app_styles.dart';
import 'package:globus/src/presentation/widgets/profile_page/components/another_stepper_widget.dart';
import 'package:globus/src/presentation/widgets/profile_page/components/profile_point_person_card_widget.dart';
import 'package:flutter/material.dart';

class ProfilePointProgressPage extends StatelessWidget {
  const ProfilePointProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Профиль',
          style: AppBarTextStyle.appBarTitleTextStyle,
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(22, 15, 22, 0),
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              const ProfilePointPersonCardWidget(),
              const SizedBox(
                height: 8,
              ),
              RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                      text: '137',
                      // textAlign: TextAlign.center,
                      style: TextStyle(
                          color: AppColors.mainBlack,
                          fontSize: 11,
                          fontWeight: FontWeight.w700),
                      children: [
                        TextSpan(
                            text: ' баллов до следующего уровня',
                            style: TextStyle(color: AppColors.mainGrey))
                      ])),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 5, 40, 0),
                child: AnotherStepper(
                  verticalGap: 30,
                  barThickness: 5,
                  activeIndex: 2,
                  activeBarColor: const Color(0xFFEBECF4),
                  inActiveBarColor: const Color(0xFFEBECF4),
                  stepperList: [
                    StepperData(price: '100', title: "Начинающий"),
                    StepperData(price: '200', title: "Продвинутый "),
                    StepperData(price: '500', title: "Эксперт"),
                    StepperData(price: '1000', title: "Суперэксперт"),
                    StepperData(price: '2000', title: "Маэстро"),
                    StepperData(price: '5000', title: "Гуру"),
                  ],
                  stepperDirection: Axis.vertical,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AppStepperData extends StatelessWidget {
  const AppStepperData({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
