import 'package:alfateam/src/core/utils/app_colors.dart';
import 'package:alfateam/src/core/utils/app_images.dart';
import 'package:alfateam/src/core/utils/app_text.dart';
import 'package:alfateam/src/presentation/widgets/components/open_image.dart';
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
      child: ClipRRect(
        borderRadius: BorderRadius.circular(11),
        child: Container(
          padding: EdgeInsets.fromLTRB(18, 18, 12, 21),
          color: Colors.white,
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
                      DiscussionCardImageWidget(
                        image: AppImages.post1,
                      ),
                      DiscussionCardImageWidget(
                        image: AppImages.post2,
                      ),
                      DiscussionCardImageWidget(
                        image: AppImages.post3,
                      ),
                      DiscussionCardImageWidget(
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
      ),
    );
  }
}

class DiscussionCardImageWidget extends StatelessWidget {
  final String image;
  const DiscussionCardImageWidget({Key? key, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => OpenImage(image: image)));
        },
        child: SizedBox(height: 71, width: 71, child: Image.asset(image)),
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
