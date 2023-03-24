import 'package:globus/src/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class ChatCardEntity {
  final String name;
  final String avatar;
  final String text;
  const ChatCardEntity(
      {required this.name, required this.avatar, required this.text});
}

class ChatCardWidget extends StatelessWidget {
  final ChatCardEntity card;
  const ChatCardWidget({Key? key, required this.card}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.pushNamed(context, '/roomPage');
      },
      // dense: true,
      contentPadding: const EdgeInsets.only(left: 18, right: 18),
      style: ListTileStyle.drawer,
      horizontalTitleGap: 12,

      leading: CircleAvatar(
        radius: 35,
        backgroundImage: AssetImage(card.avatar),
      ),
      title: Padding(
        padding: const EdgeInsets.only(top: 12),
        child: Text(
          card.name,
          style: const TextStyle(fontSize: 15, color: AppColors.textBlack),
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 8,
          ),
          Text(
            card.text,
            style: const TextStyle(color: AppColors.mainGrey, fontSize: 16),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            'May 7',
            style: TextStyle(color: AppColors.mainGrey, fontSize: 13),
          ),
        ],
      ),
    );
  }
}
