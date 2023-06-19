import 'package:globus/src/core/utils/app_colors.dart';
import 'package:globus/src/core/utils/app_images.dart';
import 'package:globus/src/core/utils/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:globus/src/domain/models/discussion/discussion_additional.dart';

class DiscussionBonusCardWidget extends StatelessWidget {
  final DiscussionAdditional card;
  const DiscussionBonusCardWidget(
      {Key? key, required this.card})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(14),
      child: Container(
        height: 46,
        padding: const EdgeInsets.fromLTRB(11, 6, 21, 6),
        // margin: EdgeInsets.only(top: 6, bottom: 6),
        color: Colors.white,
        child: Row(
          children: [
              SvgPicture.asset(AppImages.starGreen),
              const SizedBox(
                width: 11,
              ),
              Expanded(
                child: Text(
                  '${card.text} ${AppText.thanksForDetailedComment}',
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: AppColors.mainGreen),
                ),
              ),
            // if (isGreen) ...[
            // ],
            // if (isGreen == false) ...[
            //   SvgPicture.asset(AppImages.doneIcon),
            //   const SizedBox(
            //     width: 11,
            //   ),
            //   Text('$bonusCount ${AppText.thanksForAnswer}',
            //       style: const TextStyle(
            //           fontSize: 14,
            //           fontWeight: FontWeight.w300,
            //           color: AppColors.mainOrange)),
            // ]
          ],
        ),
      ),
    );
  }
}
