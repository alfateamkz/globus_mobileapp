import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:globus/src/core/utils/app_colors.dart';
import 'package:globus/src/core/utils/app_images.dart';
import 'package:globus/src/core/utils/app_text.dart';
import 'package:globus/src/presentation/widgets/auth_page/widgets/register_page_textfield.dart';
import 'package:globus/src/presentation/widgets/components/app_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends HookWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {

    final phoneController = useTextEditingController();
    final passwordController = useTextEditingController();
    final _areFieldsEmpty = useState<bool>(true);
     bool areFieldsEmpty() {
      return phoneController.text.toString().isEmpty ||
          passwordController.text.toString().isEmpty;
    }
    useEffect(() {
      phoneController.addListener(() {
          _areFieldsEmpty.value = areFieldsEmpty();
      });
      passwordController.addListener(() {
        _areFieldsEmpty.value = areFieldsEmpty();
      });
    }, [phoneController, passwordController]);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.bodyBg,
          elevation: 0,
          leading: leadingAppBarButton(context, AppColors.textGrey),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children:  [
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 26,
                      child: Text('Войти',
                          style: TextStyle(
                              color: AppColors.textBlack,
                              fontWeight: FontWeight.w700,
                              fontSize: 22)),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  RegisterPageTextField(
                    controller: phoneController,
                    text: AppText.phone,
                    icon: AppImages.phone,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  RegisterPageTextField(
                    controller: passwordController,
                    text: AppText.password,
                    icon: AppImages.lock,
                  ),
                ],
              ),
              Column(
                children: [
                  const Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                        width: 239,
                        height: 32,
                        child: Text(
                          AppText.authPolicyTitle,
                          style: TextStyle(
                            color: AppColors.textGrey,
                            fontSize: 12,
                          ),
                          textAlign: TextAlign.center,
                        )),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  AppOrangeButtonWidget(
                      text: 'Войти',
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/', (route) => false);
                      }),
                  const SizedBox(
                    height: 35,
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     const Text(
                  //       AppText.youHaveAcc,
                  //       style: TextStyle(
                  //           color: AppColors.mainGrey,
                  //           fontSize: 15,
                  //           fontWeight: FontWeight.w700),
                  //     ),
                  //     TextButton(
                  //         onPressed: () {
                  //           Navigator.pushNamedAndRemoveUntil(
                  //               context, '/', (route) => false);
                  //         },
                  //         child: const Text(
                  //           AppText.signIn,
                  //           style: TextStyle(
                  //               color: AppColors.mainOrange,
                  //               fontSize: 15,
                  //               fontWeight: FontWeight.w700),
                  //         )),
                  //   ],
                  // ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              )
            ],
          ),
        ));
  }
}
