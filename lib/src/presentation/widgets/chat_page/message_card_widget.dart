import 'package:globus/src/core/utils/app_colors.dart';
import 'package:globus/src/core/utils/app_images.dart';
import 'package:globus/src/presentation/widgets/components/preview_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MessageCardEntity {
  final String avatar;
  final String name;
  final String text;
  final String time;
  final bool? isImage;
  final bool? isFile;
  const MessageCardEntity(
      {required this.avatar,
      required this.name,
      required this.text,
      required this.time,
      this.isFile,
      this.isImage});
}

class MessageCardWidget extends StatelessWidget {
  final MessageCardEntity card;
  const MessageCardWidget({
    Key? key,
    required this.card,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 11),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18),
                    topRight: Radius.circular(18),
                    bottomRight: Radius.circular(18))),
            padding: const EdgeInsets.fromLTRB(22, 8, 17, 13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      card.avatar,
                      width: 35,
                      height: 35,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      card.name,
                      style:
                       const   TextStyle(color: AppColors.mainOrange, fontSize: 13),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  card.text,
                  style: const TextStyle(color: AppColors.textBlack, fontSize: 15),
                ),
                const SizedBox(
                  height: 4,
                ),
                if (card.isImage == true)
                  Row(
                    children: const [
                      PreviewImageWidget(image: AppImages.post1),
                      PreviewImageWidget(image: AppImages.post2),
                      PreviewImageWidget(image: AppImages.post3),
                    ],
                  ),
                if (card.isFile == true)
                  Row(
                    children: [
                      SvgPicture.asset(AppImages.file),
                      const SizedBox(
                        width: 12,
                      ),
                      const Text('document.doc',
                          style: TextStyle(
                              color: AppColors.mainGrey, fontSize: 15))
                    ],
                  )
              ],
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Text(
              card.time,
              style: const TextStyle(color: AppColors.mainGrey, fontSize: 13),
            ),
          )
        ],
      ),
    );
  }
}
