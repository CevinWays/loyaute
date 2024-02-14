import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loyaute/app/consts/loyaute_images.dart';
import 'package:loyaute/app/styles/loyaute_text_style.dart';
import 'package:loyaute/features/core/widgets/loyaute_button.dart';
import 'package:loyaute/features/login/presentation/pages/login_page.dart';
import 'package:loyaute/features/register/presentation/pages/register_page.dart';

import '../../../../app/styles/colors.dart';

class OnboardingPage extends StatelessWidget {
  static const String routeName = '/onboarding';
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueLoyautePrimary,
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                margin: const EdgeInsets.only(
                  top: 48,
                  bottom: 16.0,
                ),
                width: MediaQuery.sizeOf(context).width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      imgLoyauteWhite,
                      width: 28.5,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Loyauté',
                        style: LoyauteTextStyle.headline5(
                          context: context,
                          color: whiteClear100,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(
                imgOnboardIllustration,
                width: 289,
              ),
              Container(
                margin: const EdgeInsets.only(top: 32.0),
                child: Text(
                  'Welcome to Loyauté',
                  style: LoyauteTextStyle.headline5(
                    context: context,
                    color: whiteClear100,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'Swipe, shop, and smile!',
                  style: LoyauteTextStyle.subtitle2(
                    context: context,
                    color: whiteClear100,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Text(
                'Your loyalty journey starts here.',
                style: LoyauteTextStyle.subtitle2(
                  context: context,
                  color: whiteClear100,
                  fontWeight: FontWeight.w400,
                ),
              ),
              LoyauteButton(
                textButton: 'Sign In',
                backgroundColor: whiteClear100,
                width: double.infinity,
                radius: 8.0,
                margin: const EdgeInsets.only(
                  right: 24.0,
                  left: 24.0,
                  bottom: 16.0,
                  top: 100.0,
                ),
                padding: const EdgeInsets.all(16.0),
                textColor: blueLoyautePrimary,
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
                        color: whiteClear100,
                        fontWeight: FontWeight.w400,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Sign Up',
                          style: LoyauteTextStyle.bodyText1(
                            context: context,
                            color: blackLoyaute,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onSignInPressed(BuildContext context) =>
      Get.toNamed(LoginPage.routeName);

  void onSignUpPressed(BuildContext context) =>
      Get.toNamed(RegisterPage.routeName);
}
