import 'package:globus/src/presentation/widgets/notification_page/notification_card_widget.dart';
import 'package:flutter/material.dart';

List<NotificationCardEntity> _card = [
  NotificationCardEntity(
      text:
          'Ваш комментарий "Сложно в одной торговой марке найти все средства." понравился Петрову Сергею',
      isLike: true),
  NotificationCardEntity(
      text:
          'Ваш комментарий "Сложно в одной торговой марке найти все средства." понравился Петрову Сергею',
      isLike: true),
  NotificationCardEntity(
      text:
          'Сергей Петров прокомментировал “С моей точки зрения, все по-другому',
      isLike: false),
  NotificationCardEntity(
      text: 'Иванов Иван прокомментировал “А я полностью согласен с вами”',
      isLike: false),
];

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: _card.length,
        padding: const EdgeInsets.fromLTRB(22, 19, 22, 0),
        itemBuilder: (_, i) {
          return NotificationCardWidget(card: _card[i]);
        });
  }
}
