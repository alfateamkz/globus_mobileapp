import 'package:alfateam/src/core/utils/app_colors.dart';
import 'package:alfateam/src/core/utils/app_styles.dart';
import 'package:alfateam/src/presentation/widgets/components/app_button.dart';
import 'package:flutter/material.dart';

class NewIdeaPage extends StatelessWidget {
  const NewIdeaPage({super.key});

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
        padding: EdgeInsets.fromLTRB(14, 57, 14, 0),
        child: Container(
          padding: EdgeInsets.fromLTRB(19, 19, 19, 44),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: AppColors.textBlack.withOpacity(0.06),
                  spreadRadius: 0,
                  blurRadius: 22,
                  offset: const Offset(0, 4),
                ),
              ]),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                  'Напишите ваши идеи и мы обязательно постараемся их воплотить',
                  style: TextStyle(fontSize: 15, color: AppColors.textGrey)),
              SizedBox(
                height: 22,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.mainGrey),
                      borderRadius: BorderRadius.circular(12)),
                  hintText: "Заголовок",
                  hintStyle:
                      const TextStyle(fontSize: 15, color: AppColors.mainGrey),
                ),
              ),
              SizedBox(
                height: 22,
              ),
              TextField(
                maxLines: 7,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.mainGrey),
                      borderRadius: BorderRadius.circular(12)),
                  hintText: "Подробное описание",
                  hintStyle:
                      const TextStyle(fontSize: 15, color: AppColors.mainGrey),
                ),
              ),
              SizedBox(
                height: 31,
              ),
              AppOrangeButtonWidget(
                  height: 55,
                  width: 151,
                  text: 'Отправить',
                  onPressed: () {
                    Navigator.pushNamed(context, '/newIdea');
                  })
            ],
          ),
        ),
      ),
    );
  }
}
