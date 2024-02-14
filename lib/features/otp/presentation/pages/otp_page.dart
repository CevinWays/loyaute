import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loyaute/app/consts/loyaute_images.dart';
import 'package:loyaute/app/styles/colors.dart';
import 'package:loyaute/features/core/widgets/loyaute_button.dart';
import 'package:loyaute/features/otp/presentation/get/otp_controller.dart';

import '../../../../app/styles/loyaute_text_style.dart';
import '../../../core/widgets/loyaute_input_pin.dart';

class OtpPage extends GetView<OtpController> {
  static const String routeName = '/otp';

  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxHeight: 400,
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                bottom: 32.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    imgLoyauteBlue,
                    width: 28.5,
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 8.0,
                    ),
                    child: Text(
                      'Loyauté',
                      style: LoyauteTextStyle.headline5(
                        context: context,
                        color: blackLoyaute,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'Enter OTP Verification',
              style: LoyauteTextStyle.headline5(
                context: context,
                color: blackLoyaute,
                fontWeight: FontWeight.w700,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: RichText(
                text: TextSpan(
                  text: 'We’ve sent an OTP code to ',
                  style: LoyauteTextStyle.bodyText1(
                    context: context,
                    color: grayLoyaute1,
                    fontWeight: FontWeight.w400,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: '+62 823403122',
                      style: LoyauteTextStyle.bodyText1(
                        context: context,
                        color: blackLoyaute,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LoyauteInputPin(),
                  LoyauteInputPin(),
                  LoyauteInputPin(),
                  LoyauteInputPin(),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: RichText(
                text: TextSpan(
                  text: 'Didn’t  receive code ? ',
                  style: LoyauteTextStyle.bodyText1(
                    context: context,
                    color: grayLoyaute1,
                    fontWeight: FontWeight.w400,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Resend Code',
                      style: LoyauteTextStyle.bodyText1(
                        context: context,
                        color: blueLoyautePrimary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            LoyauteButton(
              textButton: 'Submit',
              backgroundColor: blueLoyautePrimary,
              borderSideColor: blueLoyautePrimary,
              radius: 8.0,
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(16.0),
              textColor: whiteClear100,
              onPressed: () => onSubmitOtp(context),
            ),
          ],
        ),
      ),
    );
  }

  void onSubmitOtp(BuildContext context) {}
}
