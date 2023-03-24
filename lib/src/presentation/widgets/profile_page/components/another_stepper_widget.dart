import 'package:globus/src/core/utils/app_colors.dart';
import 'package:globus/src/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StepperData {
  final String title;
  final String price;

  StepperData({
    required this.price,
    required this.title,
  });
}

class StepperText {
  final String text;
  final Widget? child;

  final TextStyle? textStyle;

  StepperText(this.text, {this.textStyle, this.child});
}

class AnotherStepper extends StatelessWidget {
  const AnotherStepper({
    Key? key,
    required this.stepperList,
    this.verticalGap = 40,
    this.activeIndex = 0,
    required this.stepperDirection,
    this.inverted = false,
    this.activeBarColor = Colors.blue,
    this.inActiveBarColor = Colors.grey,
    this.barThickness = 2,
    this.scrollPhysics,
    this.iconHeight = 20,
    this.iconWidth = 20,
  })  : assert(verticalGap >= 0),
        super(key: key);

  final List<StepperData> stepperList;

  final double verticalGap;

  final int activeIndex;

  final Axis stepperDirection;

  final bool inverted;

  final Color activeBarColor;

  final Color inActiveBarColor;

  final double barThickness;

  final double iconHeight;

  final double iconWidth;

  final ScrollPhysics? scrollPhysics;

  @override
  Widget build(BuildContext context) {
    var crossAxisAlign = stepperDirection == Axis.horizontal
        ? CrossAxisAlignment.end
        : CrossAxisAlignment.start;
    if (inverted) {
      crossAxisAlign = crossAxisAlign == CrossAxisAlignment.end
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.end;
    }
    final Iterable<int> iterable = Iterable<int>.generate(stepperList.length);
    return Flex(
      crossAxisAlignment: crossAxisAlign,
      direction: stepperDirection,
      children: iterable
          .map((index) => _getPreferredStepper(context, index: index))
          .toList(),
    );
  }

  Widget _getPreferredStepper(BuildContext context, {required int index}) {
    return VerticalStepperItem(
      index: index,
      item: stepperList[index],
      totalLength: stepperList.length,
      gap: verticalGap,
      activeIndex: activeIndex,
      isInverted: inverted,
      inActiveBarColor: inActiveBarColor,
      activeBarColor: activeBarColor,
      barWidth: barThickness,
      iconHeight: iconHeight,
      iconWidth: iconWidth,
    );
  }
}

class VerticalStepperItem extends StatelessWidget {
  const VerticalStepperItem(
      {Key? key,
      required this.item,
      required this.index,
      required this.totalLength,
      required this.gap,
      required this.activeIndex,
      required this.isInverted,
      required this.activeBarColor,
      required this.inActiveBarColor,
      required this.barWidth,
      required this.iconHeight,
      required this.iconWidth})
      : super(key: key);

  final StepperData item;

  final int index;

  final int totalLength;

  final int activeIndex;

  final double gap;

  final bool isInverted;
  final Color activeBarColor;

  final Color inActiveBarColor;

  final double barWidth;

  final double iconHeight;

  final double iconWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: isInverted ? getInvertedChildren() : getChildren(),
    );
  }

  List<Widget> getChildren() {
    return [
      Column(
        children: [
          Container(
            color: index == 0
                ? Colors.transparent
                : (index <= activeIndex ? activeBarColor : inActiveBarColor),
            width: barWidth,
            height: gap,
          ),
          DotProvider(
            activeIndex: activeIndex,
            index: index,
            item: item,
            totalLength: totalLength,
            iconHeight: iconHeight,
            iconWidth: iconWidth,
          ),
          Container(
            color: index == totalLength - 1
                ? Colors.transparent
                : (index < activeIndex ? activeBarColor : inActiveBarColor),
            width: barWidth,
            height: gap,
          ),
        ],
      ),
      const SizedBox(width: 8),
      Expanded(
        child: Column(
          crossAxisAlignment:
              isInverted ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(item.title,
                    style: (index == activeIndex)
                        ? const TextStyle(
                            fontWeight: FontWeight.w700,
                            color: AppColors.mainBlack,
                          )
                        : const TextStyle(
                            color: AppColors.mainGrey,
                          )),
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide(
                              width: 1,
                              color: (index == activeIndex)
                                  ? AppColors.mainOrange
                                  : AppColors.mainGrey,
                            ))),
                    child: Text(
                      '${item.price} баллов',
                      style: TextStyle(
                          color: (index == activeIndex)
                              ? AppColors.mainOrange
                              : AppColors.mainGrey,
                          fontSize: 12),
                    ))
              ],
            )
          ],
        ),
      ),
    ];
  }

  List<Widget> getInvertedChildren() {
    return getChildren().reversed.toList();
  }
}

class DotProvider extends StatelessWidget {
  const DotProvider(
      {Key? key,
      required this.index,
      required this.activeIndex,
      required this.item,
      required this.totalLength,
      this.iconHeight,
      this.iconWidth})
      : super(key: key);

  /// Stepper item of type [StepperData] to inflate stepper with data
  final StepperData item;

  /// Index at which the item is present
  final int index;

  /// Total length of the list provided
  final int totalLength;

  /// Active index which needs to be highlighted and before that
  final int activeIndex;

  /// Height of [StepperData.iconWidget]
  final double? iconHeight;

  /// Width of [StepperData.iconWidget]
  final double? iconWidth;

  @override
  Widget build(BuildContext context) {
    return index == activeIndex
        ? Container(
            padding: const EdgeInsets.all(7),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: const Color(0xFFEBECF4)),
                borderRadius: const BorderRadius.all(Radius.circular(30))),
            child: SizedBox(
                height: 20,
                width: 20,
                child: SvgPicture.asset(
                  AppImages.cristal,
                  colorFilter: const ColorFilter.mode(
                      AppColors.mainOrange, BlendMode.srcIn),
                )),
          )
        : Container(
            padding: const EdgeInsets.all(7),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: const Color(0xFFEBECF4)),
                borderRadius: const BorderRadius.all(Radius.circular(30))),
            child: SizedBox(
                height: 20,
                width: 20,
                child: SvgPicture.asset(
                  AppImages.cristal,
                )),
          );
  }
}

class StepperDot extends StatelessWidget {
  /// Default stepper dot
  const StepperDot({
    Key? key,
    required this.index,
    required this.totalLength,
    required this.activeIndex,
  }) : super(key: key);

  /// Index at which the item is present
  final int index;

  /// Total length of the list provided
  final int totalLength;

  /// Active index which needs to be highlighted and before that
  final int activeIndex;

  @override
  Widget build(BuildContext context) {
    final color = (index <= activeIndex) ? Colors.blue : Colors.grey;
    return Container(
      height: 18,
      width: 18,
      decoration: BoxDecoration(
        border: Border.all(
          color: color,
          width: 1,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: Container(
        height: 14,
        width: 14,
        margin: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: color,
          border: Border.all(
            color: color,
            width: 1,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
        ),
      ),
    );
  }
}

class Utils {
  static ColorFilter getGreyScaleColorFilter() {
    ColorFilter greyscale = const ColorFilter.matrix(<double>[
      0.2126,
      0.7152,
      0.0722,
      0,
      0,
      0.2126,
      0.7152,
      0.0722,
      0,
      0,
      0.2126,
      0.7152,
      0.0722,
      0,
      0,
      0,
      0,
      0,
      1,
      0,
    ]);

    return greyscale;
  }
}
