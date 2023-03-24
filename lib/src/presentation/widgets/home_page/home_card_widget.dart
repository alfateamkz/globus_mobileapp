import 'package:globus/src/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class HomeCardWidget extends StatelessWidget {
  final List item;
  const HomeCardWidget({Key? key, required this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(right: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 90,
                  width: 89,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        item[0],
                        fit: BoxFit.cover,
                        width: 89,
                        height: 90,
                      )),
                ),
                const SizedBox(width: 25),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 13,
                      ),
                      Text(
                        item[1],
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontSize: 15,
                            color: AppColors.textBlack,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(item[2],
                          softWrap: true,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontSize: 15,
                              color: AppColors.mainOrange,
                              fontWeight: FontWeight.w300)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Material(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  Navigator.pushNamed(context, '/discussion');
                }),
          ),
        ],
      ),
    );
  }

  TextStyle cardText() {
    return const TextStyle(
        fontSize: 14, color: AppColors.textGrey, fontWeight: FontWeight.w400);
  }
}
