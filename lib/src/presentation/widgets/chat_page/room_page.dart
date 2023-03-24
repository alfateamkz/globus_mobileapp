import 'package:globus/src/core/utils/app_colors.dart';
import 'package:globus/src/core/utils/app_images.dart';
import 'package:globus/src/core/utils/app_styles.dart';
import 'package:globus/src/core/utils/app_text.dart';
import 'package:globus/src/presentation/widgets/chat_page/message_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

List<MessageCardEntity> _card = [
  const MessageCardEntity(
      avatar: AppImages.avatar2,
      name: 'Роман',
      text: 'Lorem ipsum dolor sit amet.',
      time: '23 мая 2022 в 17:43',
      isImage: true),
  const MessageCardEntity(
    avatar: AppImages.avatar1,
    name: 'Юлия',
    text:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.',
    time: '23 мая 2022 в 18:01',
  ),
  const MessageCardEntity(
    avatar: AppImages.avatar2,
    name: 'Роман',
    text:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.',
    time: '23 мая 2022 в 17:43',
    isFile: true,
  ),
];

class RoomPage extends StatelessWidget {
  const RoomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.bottomBarColor,
        bottomSheet: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: AppColors.textBlack.withOpacity(0.05),
                spreadRadius: 0,
                blurRadius: 12,
                offset: const Offset(0, -4),
              ),
            ],
          ),
          height: 75,
          alignment: Alignment.center,
          child: ListTile(
            minLeadingWidth: 0,
            leading: InkWell(
              child: SvgPicture.asset(
                AppImages.attach,
              ),
            ),
            trailing: InkWell(
                child: SvgPicture.asset(
              AppImages.send,
            )),
            title: TextField(
              keyboardType: TextInputType.text,
              autofocus: false,
              maxLines: null,
              decoration: InputDecoration(
                fillColor: Colors.transparent,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(30)),
                hintText: AppText.write,
                hintStyle:
                    const TextStyle(color: AppColors.textGrey, fontSize: 14),
                isDense: true,
                filled: true,
              ),
            ),
          ),
        ),
        appBar: AppBar(
          title: const Text(
            AppText.appBarRoomTitle,
            style: AppBarTextStyle.appBarTitleTextStyle,
          ),
          elevation: 0,
          centerTitle: true,
        ),
        body: ListView.builder(
            padding:const EdgeInsets.fromLTRB(18, 19, 18, 75),
            itemCount: _card.length,
            itemBuilder: (_, i) {
              return MessageCardWidget(card: _card[i]);
            }));
  }
}
