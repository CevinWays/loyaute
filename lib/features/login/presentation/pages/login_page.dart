import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loyaute/app/consts/loyaute_images.dart';
import 'package:loyaute/app/styles/colors.dart';
import 'package:loyaute/features/core/widgets/loyaute_button.dart';
import 'package:loyaute/features/core/widgets/loyaute_form_field.dart';
import 'package:loyaute/features/login/presentation/get/login_controller.dart';
import 'package:loyaute/features/otp/presentation/pages/otp_page.dart';
import 'package:loyaute/features/register/presentation/pages/register_page.dart';

import '../../../../app/styles/loyaute_text_style.dart';

class LoginPage extends GetView<LoginController> {
  static const String routeName = '/login';
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return SafeArea(
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        margin: const EdgeInsets.only(
          top: 32.0,
          left: 24.0,
          right: 24.0,
        ),
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    imgLoyauteBlue,
                    width: 44.0,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      'Let’s sign You in.',
                      style: LoyauteTextStyle.headline5(
                        context: context,
                        color: blackLoyaute,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 16.0),
                    child: Text(
                      'Hey there, fabulous! Ready to kick back and explore?'
                      ' Just a quick sign-in away from unlocking a world of fun.',
                      style: LoyauteTextStyle.bodyText1(
                        context: context,
                        color: grayLoyaute1,
                        fontWeight: FontWeight.w400,
                      )?.copyWith(height: 1.5),
                    ),
                  ),
                  const LoyauteFormField(
                    keyboardType: TextInputType.emailAddress,
                    margin: EdgeInsets.symmetric(vertical: 16.0),
                    labelText: 'Email',
                  ),
                  const LoyauteFormField(
                    keyboardType: TextInputType.visiblePassword,
                    margin: EdgeInsets.zero,
                    labelText: 'Password',
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16.0),
                    child: RichText(
                      text: TextSpan(
                        text: 'Forgot password? ',
                        style: LoyauteTextStyle.bodyText1(
                          context: context,
                          color: grayLoyaute1,
                          fontWeight: FontWeight.w400,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Reset Password',
                            style: LoyauteTextStyle.bodyText1(
                              context: context,
                              color: blueLoyautePrimary,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                LoyauteButton(
                  textButton: 'Sign In',
                  backgroundColor: blueLoyautePrimary,
                  borderSideColor: blueLoyautePrimary,
                  radius: 8.0,
                  margin: const EdgeInsets.only(
                    bottom: 16.0,
                    // top: 300.0,
                  ),
                  padding: const EdgeInsets.all(16.0),
                  textColor: whiteClear100,
                  onPressed: () => onSignInPressed(context),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 16.0),
                  child: GestureDetector(
                    onTap: () => onSignUpPressed(context),
                    child: RichText(
                      text: TextSpan(
                        text: 'Haven’t registered yet ? ',
                        style: LoyauteTextStyle.bodyText1(
                          context: context,
                          color: grayLoyaute1,
                          fontWeight: FontWeight.w400,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Register',
                            style: LoyauteTextStyle.bodyText1(
                              context: context,
                              color: blueLoyautePrimary,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void onSignInPressed(BuildContext context) => Get.toNamed(OtpPage.routeName);

  void onSignUpPressed(BuildContext context) =>
      Get.offAllNamed(RegisterPage.routeName);
}
