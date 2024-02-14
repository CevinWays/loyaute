import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loyaute/app/consts/loyaute_images.dart';
import 'package:loyaute/app/styles/colors.dart';
import 'package:loyaute/app/styles/loyaute_text_style.dart';
import 'package:loyaute/features/core/widgets/loyaute_form_field.dart';
import 'package:loyaute/features/login/presentation/pages/login_page.dart';
import 'package:loyaute/features/register/presentation/get/register_controller.dart';

import '../../../core/widgets/loyaute_button.dart';
import '../../../otp/presentation/pages/otp_page.dart';

class RegisterPage extends GetView<RegisterController> {
  static const String routeName = '/register';
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(
            top: 32.0,
            left: 24.0,
            right: 24.0,
          ),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    imgLoyauteBlue,
                    width: 44.0,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      'Create an account',
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
                      'New around here? Awesome choice! Let’s make it official.',
                      style: LoyauteTextStyle.bodyText1(
                        context: context,
                        color: grayLoyaute1,
                        fontWeight: FontWeight.w400,
                      )?.copyWith(height: 1.5),
                    ),
                  ),
                  const LoyauteFormField(
                    labelText: 'Name',
                    keyboardType: TextInputType.text,
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                  ),
                  const LoyauteFormField(
                    labelText: 'Email',
                    keyboardType: TextInputType.emailAddress,
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                  ),
                  const LoyauteFormField(
                    labelText: 'Phone Number',
                    keyboardType: TextInputType.phone,
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                  ),
                  const LoyauteFormField(
                    labelText: 'Password',
                    keyboardType: TextInputType.visiblePassword,
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                  ),
                ],
              ),
              Column(
                children: [
                  LoyauteButton(
                    textButton: 'Create Account',
                    backgroundColor: blueLoyautePrimary,
                    borderSideColor: blueLoyautePrimary,
                    radius: 8.0,
                    margin: const EdgeInsets.only(
                      bottom: 16.0,
                      top: 100.0,
                    ),
                    padding: const EdgeInsets.all(16.0),
                    textColor: whiteClear100,
                    onPressed: () => onSignUpPressed(context),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 16.0),
                    child: GestureDetector(
                      onTap: () => onSignInPressed(context),
                      child: RichText(
                        text: TextSpan(
                          text: 'Already have an account? ',
                          style: LoyauteTextStyle.bodyText1(
                            context: context,
                            color: grayLoyaute1,
                            fontWeight: FontWeight.w400,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Sign In',
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
      ),
    );
  }

  void onSignInPressed(BuildContext context) =>
      Get.offAllNamed(LoginPage.routeName);

  void onSignUpPressed(BuildContext context) => Get.toNamed(OtpPage.routeName);
}
