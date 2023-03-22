import 'package:alfateam/src/core/utils/app_colors.dart';
import 'package:alfateam/src/core/utils/app_images.dart';
import 'package:alfateam/src/presentation/widgets/chat_page/chat_card_widget.dart';
import 'package:flutter/material.dart';

List<ChatCardEntity> _card = [
  const ChatCardEntity(
      name: 'Оглоблин Роман, модератор',
      avatar: AppImages.avatar2,
      text: 'По вашему вопросу хочу вам'),
  const ChatCardEntity(
      name: 'Рассылка',
      avatar: AppImages.avatar1,
      text: 'Приглашаем вас принять участие'),
  const ChatCardEntity(
      name: 'Панченко Юлия, модератор',
      avatar: AppImages.avatar3,
      text: 'Возможно вам стоит обратиться '),
  const ChatCardEntity(
      name: 'Сидоров Сергей, техническая поддержка',
      avatar: AppImages.avatar1,
      text: 'По вашему вопросу хочу вам'),
];

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 19, 18, 19),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: AppColors.textBlack.withOpacity(0.06),
                spreadRadius: 0,
                blurRadius: 22,
                offset: const Offset(0, 4),
              ),
            ]),
        child: ListView.separated(
            itemBuilder: (context, index) {
              return ChatCardWidget(
                card: _card[index],
              );
            },
            separatorBuilder: (context, index) {
              return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18),
                  child: Divider(
                    thickness: 1,
                    color: Color(0xFFEEEEF2),
                  ));
            },
            itemCount: _card.length),
      ),
    );
  }
}
