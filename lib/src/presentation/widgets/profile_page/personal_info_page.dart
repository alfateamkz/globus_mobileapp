import 'package:alfateam/src/core/utils/app_colors.dart';
import 'package:alfateam/src/core/utils/app_images.dart';
import 'package:alfateam/src/core/utils/app_styles.dart';
import 'package:alfateam/src/core/utils/app_text.dart';
import 'package:alfateam/src/presentation/widgets/components/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PersonalInfoPage extends StatelessWidget {
  const PersonalInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Персональная иинформация",
          style: AppBarTextStyle.appBarTitleTextStyle,
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(22, 22, 22, 0),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(AppImages.avatar2),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'Иванов Иван',
                style: TextStyle(
                    color: AppColors.textBlack,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              )
            ],
          ),
          const PersonalInfoListWidget(),
          const PersonalInfoCardWidget(),
          const PersonalInfoSocialListWidget(),
          const SizedBox(
            height: 35,
          ),
          SizedBox(
            width: 151,
            height: 55,
            child: AppOrangeButtonWidget(
              text: "Сохранить",
              onPressed: () {},
              width: 151,
              height: 55,
            ),
          ),
          const SizedBox(
            height: 35,
          ),
        ],
      ),
    );
  }
}

class PersonalInfoCardWidget extends StatelessWidget {
  const PersonalInfoCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'Карта лояльности '.toUpperCase(),
            style: const TextStyle(
              letterSpacing: 1,
              color: AppColors.mainGrey,
              fontSize: 10,
            ),
          ),
        ),
        const SizedBox(
          height: 12,
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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 22, 22, 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Номер карты',
                      style: TextStyle(color: AppColors.mainGrey, fontSize: 15),
                    ),
                    Text(
                      '00100034455',
                      style:
                          TextStyle(color: AppColors.textBlack, fontSize: 15),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class PersonalInfoSocialListWidget extends StatelessWidget {
  const PersonalInfoSocialListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'Профили в социальных сетях'.toUpperCase(),
            style: const TextStyle(
                color: AppColors.mainGrey, letterSpacing: 1, fontSize: 10),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Container(
          padding: const EdgeInsets.only(bottom: 11),
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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 22, 22, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(AppImages.vk),
                    const SizedBox(
                      width: 11,
                    ),
                    const Text(
                      'Vkontakte',
                      style:
                          TextStyle(color: AppColors.textBlack, fontSize: 15),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22, right: 22, top: 5),
                child: Divider(
                  color: AppColors.mainGrey.withOpacity(0.2),
                  thickness: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 22, 22, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(AppImages.mail),
                    const SizedBox(
                      width: 11,
                    ),
                    const Text(
                      'Яндекс почта',
                      style:
                          TextStyle(color: AppColors.textBlack, fontSize: 15),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22, right: 22, top: 5),
                child: Divider(
                  color: AppColors.mainGrey.withOpacity(0.2),
                  thickness: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 22, 22, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(AppImages.circlePlus),
                    const SizedBox(
                      width: 11,
                    ),
                    const Text(
                      'Добавить профиль',
                      style: TextStyle(color: AppColors.mainGrey, fontSize: 15),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class PersonalInfoListWidget extends StatelessWidget {
  const PersonalInfoListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 32,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'Личные данные'.toUpperCase(),
            style: const TextStyle(
                color: AppColors.mainGrey, letterSpacing: 1, fontSize: 10),
          ),
        ),
        const SizedBox(
          height: 12,
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
          child: Column(
            children: [
              const PersonalInfoItemWidget(
                leftText: 'Ваше имя',
                rightText: 'Иванов Иван',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Divider(
                  color: AppColors.mainGrey.withOpacity(0.2),
                  thickness: 1,
                ),
              ),
              const PersonalInfoItemWidget(
                leftText: 'Ваше телефон',
                rightText: '+7111 111-00-00',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Divider(
                  color: AppColors.mainGrey.withOpacity(0.2),
                  thickness: 1,
                ),
              ),
              const PersonalInfoItemWidget(
                leftText: 'E-mail',
                rightText: 'mail@mail.ru',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Divider(
                  color: AppColors.mainGrey.withOpacity(0.2),
                  thickness: 1,
                ),
              ),
              const PersonalInfoItemWidget(
                leftText: 'Дата рождения',
                rightText: '01/01/1980',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Divider(
                  color: AppColors.mainGrey.withOpacity(0.2),
                  thickness: 1,
                ),
              ),
              const PersonalInfoItemWidget(
                leftText: 'Город',
                rightText: 'Москва',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Divider(
                  color: AppColors.mainGrey.withOpacity(0.2),
                  thickness: 1,
                ),
              ),
              const PersonalInfoItemWidget(
                leftText: 'Город',
                rightText: 'Москва',
              ),
              SizedBox(
                height: 12,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class PersonalInfoItemWidget extends StatelessWidget {
  final String leftText;
  final String rightText;
  const PersonalInfoItemWidget(
      {Key? key, required this.leftText, required this.rightText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(22, 22, 22, 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leftText,
            style: const TextStyle(color: AppColors.mainGrey, fontSize: 15),
          ),
          Text(
            rightText,
            style: const TextStyle(color: AppColors.textBlack, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
