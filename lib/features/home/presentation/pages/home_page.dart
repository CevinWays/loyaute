import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loyaute/app/consts/loyaute_images.dart';
import 'package:loyaute/app/styles/colors.dart';
import 'package:loyaute/features/history/presentation/pages/history_page.dart';
import 'package:loyaute/features/home/presentation/get/home_controller.dart';
import 'package:loyaute/features/profile/presentation/pages/profile_page.dart';

import '../../../../app/styles/loyaute_text_style.dart';

class HomePage extends GetView<HomeController> {
  static const String routeName = '/home';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 54,
                    decoration: const ShapeDecoration(
                      color: blueLoyautePrimary,
                      shape: RoundedRectangleBorder(),
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 100,
                    decoration: const ShapeDecoration(
                      color: blueLoyautePrimary,
                      shape: OvalBorder(),
                    ),
                    child: Container(
                      margin: const EdgeInsets.only(top: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            imgLoyautePlain,
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
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 24.0,
                  right: 24.0,
                  top: 32,
                  bottom: 16.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () => onProfilePressed(context),
                          child: Container(
                            margin: const EdgeInsets.only(right: 16.0),
                            width: 49.2,
                            height: 49.2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: const DecorationImage(
                                image: AssetImage(imgAvatar),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Good Morning.',
                              style: LoyauteTextStyle.subtitle2(
                                context: context,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              'Johan',
                              style: LoyauteTextStyle.headline6(
                                context: context,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 16.0),
                          child: Image.asset(
                            imgSearch,
                            width: 24,
                            height: 24,
                          ),
                        ),
                        Image.asset(
                          imgNotif,
                          width: 24,
                          height: 24,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 24.0),
                width: MediaQuery.sizeOf(context).width,
                height: 182,
                padding: const EdgeInsets.all(18.0),
                decoration: BoxDecoration(
                  color: blueLoyautePrimary,
                  borderRadius: BorderRadius.circular(15.0),
                  image: const DecorationImage(
                    image: AssetImage(imgBgPattern),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Balance',
                          style: LoyauteTextStyle.subtitle2(
                            context: context,
                            color: whiteClear100,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Image.asset(
                          imgLoyautePlain,
                          width: 20,
                          height: 20,
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () => onHistoryPointPressed(context),
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 4.0),
                        child: RichText(
                          text: TextSpan(
                            text: '1,978 ',
                            style: LoyauteTextStyle.headline5(
                              context: context,
                              color: whiteClear100,
                              fontWeight: FontWeight.w600,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Points',
                                style: LoyauteTextStyle.headline5(
                                  context: context,
                                  color: whiteClear100,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Expiration date: ',
                        style: LoyauteTextStyle.subtitle2(
                          context: context,
                          color: whiteClear100,
                          fontWeight: FontWeight.w300,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Jan 31, 2024',
                            style: LoyauteTextStyle.subtitle2(
                              context: context,
                              color: whiteClear100,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 80, left: 24, right: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 56.0,
                          height: 56.0,
                          decoration: const ShapeDecoration(
                              color: blueLoyautePrimary, shape: CircleBorder()),
                          child: Image.asset(
                            imgLoyautePlain,
                            width: 21.0,
                            height: 17.5,
                          ),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          'Voucher',
                          style: LoyauteTextStyle.subtitle2(
                              context: context, color: blackLoyaute),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 56.0,
                          height: 56.0,
                          decoration: const ShapeDecoration(
                              color: blueLoyautePrimary, shape: CircleBorder()),
                          child: Image.asset(
                            imgLoyautePlain,
                            width: 21.0,
                            height: 17.5,
                          ),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          'QRIS',
                          style: LoyauteTextStyle.subtitle2(
                              context: context, color: blackLoyaute),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 56.0,
                          height: 56.0,
                          decoration: const ShapeDecoration(
                              color: blueLoyautePrimary, shape: CircleBorder()),
                          child: Image.asset(
                            imgLoyautePlain,
                            width: 21.0,
                            height: 17.5,
                          ),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          'Scan',
                          style: LoyauteTextStyle.subtitle2(
                              context: context, color: blackLoyaute),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 56.0,
                          height: 56.0,
                          decoration: const ShapeDecoration(
                              color: blueLoyautePrimary, shape: CircleBorder()),
                          child: Image.asset(
                            imgLoyautePlain,
                            width: 21.0,
                            height: 17.5,
                          ),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          'Mission',
                          style: LoyauteTextStyle.subtitle2(
                              context: context, color: blackLoyaute),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 315,
            left: 30,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 24.0),
                  width: 274.47,
                  height: 83.76,
                  padding: const EdgeInsets.all(8.0),
                  decoration: const BoxDecoration(
                    color: whiteClear100,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16.0),
                        topRight: Radius.circular(16.0)),
                  ),
                  child: Image.asset(imgBarcode),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 24.0),
                  width: 274.47,
                  height: 37,
                  padding: const EdgeInsets.all(8.0),
                  decoration: const BoxDecoration(
                    color: blackLoyaute,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16.0),
                        bottomRight: Radius.circular(16.0)),
                  ),
                  child: Text(
                    '165894879261361',
                    textAlign: TextAlign.center,
                    style: LoyauteTextStyle.bodyText1(
                      context: context,
                      color: whiteClear100,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void onProfilePressed(BuildContext context) =>
      Get.toNamed(ProfilePage.routeName);

  void onHistoryPointPressed(BuildContext context) =>
      Get.toNamed(HistoryPage.routeName);
}
