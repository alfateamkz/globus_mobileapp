import 'package:globus/src/core/utils/app_colors.dart';
import 'package:globus/src/core/utils/app_images.dart';
import 'package:globus/src/core/utils/app_text.dart';
import 'package:globus/src/presentation/widgets/components/preview_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DiscussionCardEntity {
  final String avatar;
  final String title;
  final String time;
  final String text;
  final List<String>? img;
  const DiscussionCardEntity(
      {required this.avatar,
      required this.title,
      required this.time,
      required this.text,
      this.img});
}

class DiscussionCardWidget extends StatelessWidget {
  final DiscussionCardEntity card;
  final bool? withPostImg;
  const DiscussionCardWidget({Key? key, required this.card, this.withPostImg})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(11),
            boxShadow: [
              BoxShadow(
                color: AppColors.textBlack.withOpacity(0.04),
                spreadRadius: 0,
                blurRadius: 45,
                offset: const Offset(0, 4),
              ),
            ]),
        padding: const EdgeInsets.fromLTRB(18, 18, 12, 21),
        child: Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: CircleAvatar(
                  radius: 31,
                  backgroundColor: Colors.white,
                  child: ClipOval(
                      child: Image.asset(
                    card.avatar,
                    fit: BoxFit.cover,
                  ))),
              title: Text(
                card.title,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: AppColors.textBlack,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  card.time,
                  style: const TextStyle(
                      color: AppColors.mainGrey,
                      fontSize: 12,
                      fontWeight: FontWeight.w300),
                ),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Text(
              card.text,
              style: const TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 15,
                  height: 1.5,
                  color: AppColors.textGrey),
            ),
            const SizedBox(
              height: 11,
            ),
            if (withPostImg == true)
              SingleChildScrollView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    PreviewImageWidget(
                      image: AppImages.post1,
                    ),
                    PreviewImageWidget(
                      image: AppImages.post2,
                    ),
                    PreviewImageWidget(
                      image: AppImages.post3,
                    ),
                    PreviewImageWidget(
                      image: AppImages.post4,
                    ),
                  ],
                ),
              ),
            const SizedBox(
              height: 11,
            ),
            Row(
              children: const [
                CommentLikeButtonWidget(icon: AppImages.likeHeart, text: '5'),
                SizedBox(
                  width: 24,
                ),
                CommentLikeButtonWidget(
                    icon: AppImages.comment, text: '5 ${AppText.comments}'),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CommentLikeButtonWidget extends StatelessWidget {
  final String icon;
  final String text;
  const CommentLikeButtonWidget(
      {Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(icon),
        const SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: const TextStyle(
              color: AppColors.textGrey,
              fontSize: 15,
              fontWeight: FontWeight.w300),
        )
      ],
    );
  }
}
