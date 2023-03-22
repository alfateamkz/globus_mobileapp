import 'package:alfateam/src/core/utils/app_styles.dart';
import 'package:alfateam/src/presentation/widgets/components/app_button.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class OpenImage extends StatelessWidget {
  final String image;

  const OpenImage(
      {Key? key,
      required this.image,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: widget.bgColor ?? AppColors.mainBlue,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading:
            leadingAppBarButton(context, Colors.white),
        title: Text("Фото", style: AppBarTextStyle.appBarTitleTextStyle,),
      ),
      body: SizedBox(
    child: PhotoView(
      imageProvider: AssetImage(image),
    )
  )
    );
  }
}