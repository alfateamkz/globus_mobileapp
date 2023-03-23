import 'package:alfateam/src/core/utils/app_colors.dart';
import 'package:alfateam/src/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ProfilePrivacyPage extends StatelessWidget {
  const ProfilePrivacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Правила участия',
          style: AppBarTextStyle.appBarTitleTextStyle,
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(36, 35, 29, 0),
        child: SizedBox(
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusee convallis pellentesque metus id lacinia. Nunc dapibus pulvinar auctor. Duis nec sem at orci commodo viverra id in ipsum. Fusee tellus nisi, vestibulum sed rhoncus at, pretium non libero. Cras vel lacus ut ipsum vehicula aliquam at quis urna. Nunc ac ornare ante. Fusee lobortis neque in diam vulputate quis semper sem elementum.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusee convallis pellentesque metus id lacinia. Nunc dapibus pulvinar auctor. Duis nec sem at orci commodo viverra id in ipsum.  Fusee tellus nisi, vestibulum sed rhoncus at, pretium non libero. Cras vel lacus ut ipsum vehicula aliquam at quis urna. Nunc ac ornare ante. Fusee lobortis neque in diam vulputate quis semper sem elementum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusee convallis pellentesque metus id lacinia. Cras vel lacus ut ipsum vehicula aliquam at quis urna. Nunc ac ornare ante. Fusee lobortis neque in diam vulputate quis semper sem elementum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusee convallis pellentesque metus id lacinia. Nunc dapibus pulvinar auctor. Duis nec sem at orci commodo viverra id in ipsum. Fusee tellus nisi, vestibulum sed rhoncus at, pretium non libero. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusee convallis pellentesque metus id lacinia. Nunc dapibus pulvinar auctor. Duis nec sem at orci commodo viverra id in ipsum. Fusee tellus nisi, vestibulum sed rhoncus at, pretium non libero. Cras vel lacus ut ipsum vehicula aliquam at quis urna. Nunc ac ornare ante. Fusee lobortis neque in diam vulputate quis semper sem elementum.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusee convallis pellentesque metus id lacinia. Nunc dapibus pulvinar auctor. Duis nec sem at orci commodo viverra id in ipsum.  Fusee tellus nisi, vestibulum sed rhoncus at, pretium non libero. Cras vel lacus ut ipsum vehicula aliquam at quis urna. Nunc ac ornare ante. Fusee lobortis neque in diam vulputate quis semper sem elementum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusee convallis pellentesque metus id lacinia. Cras vel lacus ut ipsum vehicula aliquam at quis urna. Nunc ac ornare ante. Fusee lobortis neque in diam vulputate quis semper sem elementum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusee convallis pellentesque metus id lacinia. Nunc dapibus pulvinar auctor. Duis nec sem at orci commodo viverra id in ipsum. Fusee tellus nisi, vestibulum sed rhoncus at, pretium non libero.",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: AppColors.textBlack),
          ),
        ),
      ),
    );
  }
}
