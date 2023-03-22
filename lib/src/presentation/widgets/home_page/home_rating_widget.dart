import 'package:alfateam/src/core/utils/app_colors.dart';
import 'package:alfateam/src/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

List<List> opros = [
  [AppImages.like, 'Хочу похвалить'],
  [AppImages.idea, 'Есть идея'],
  [AppImages.dislike, 'Меня расстроило '],
  [AppImages.blankSearch, 'Как там у конкурентов'],
];

class HomeRatingWidget extends StatelessWidget {
  const HomeRatingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            crossAxisCount: 2,
            mainAxisExtent: 74),
        itemCount: opros.length,
        itemBuilder: (_, i) => HomeRatingCardWidget(item: opros[i]));
  }
}

class HomeRatingCardWidget extends StatelessWidget {
  final List item;
  const HomeRatingCardWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.only(right: 10),
        height: 70,
        color: Colors.white,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12)),
              child: Container(
                color: AppColors.mainOrange,
                height: 51,
                width: 3,
              ),
            ),
            const SizedBox(
              width: 14,
            ),
            SvgPicture.asset(
              item[0],
              width: 24,
              height: 24,
            ),
            const SizedBox(
              width: 14,
            ),
            Expanded(
              child: Text(
                item[1],
                style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: AppColors.mainOrange),
              ),
            )
          ],
        ),
      ),
    );
  }
}
