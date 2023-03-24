import 'package:globus/src/presentation/widgets/components/open_image.dart';
import 'package:flutter/material.dart';

class PreviewImageWidget extends StatelessWidget {
  final String image;
  const PreviewImageWidget({Key? key, required this.image}) : super(key: key);

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
