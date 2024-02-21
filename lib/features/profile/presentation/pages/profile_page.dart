import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loyaute/features/profile/presentation/get/profile_controller.dart';

import '../../../../app/consts/loyaute_images.dart';
import '../../../../app/styles/colors.dart';
import '../../../../app/styles/loyaute_text_style.dart';
import '../../../core/widgets/loyaute_button.dart';

class ProfilePage extends GetView<ProfileController> {
  static const String routeName = '/profile';
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(context),
      bottomNavigationBar: buildBottomNavBar(context),
    );
  }

  Widget buildBottomNavBar(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 3,
      onTap: (value) => controller.onItemTapped(value),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          label: 'History',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: 'Inbox',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }

  Widget buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 48),
                child: Text(
                  'Profile',
                  style: LoyauteTextStyle.headline6(
                    context: context,
                    color: blackLoyaute,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 24.0,
                  right: 24.0,
                  top: 32,
                  bottom: 16.0,
                ),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 16.0),
                          width: 85.0,
                          height: 85.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            image: const DecorationImage(
                              image: AssetImage(imgAvatar),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Johan Doe',
                              style: LoyauteTextStyle.headline6(
                                context: context,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              'johandoe@gmail.com',
                              style: LoyauteTextStyle.bodyText1(
                                context: context,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            LoyauteButton(
                              textButton: 'Edit Profile',
                              width: 125,
                              height: 31,
                              backgroundColor: whiteClear100,
                              borderSideColor: grayLoyaute,
                              radius: 8.0,
                              padding: EdgeInsets.zero,
                              textColor: grayLoyaute1,
                              margin: const EdgeInsets.only(top: 8.0),
                              onPressed: () => onEditProfilePressed(context),
                              textStyle: LoyauteTextStyle.button(
                                context: context,
                                color: blackSpace100,
                              )?.copyWith(
                                fontSize: 12,
                              ),
                            ),
                          ],
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
                    Container(
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
                margin: const EdgeInsets.only(
                  top: 100,
                  right: 24,
                  left: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        'ACCOUNT',
                        style: LoyauteTextStyle.bodyText1(
                            context: context,
                            color: grayLoyaute,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8.0),
                              margin: const EdgeInsets.only(right: 8.0),
                              decoration: BoxDecoration(
                                  color: grayMood10,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(
                                imgNotif,
                                width: 24,
                              ),
                            ),
                            Text(
                              'Notification',
                              style: LoyauteTextStyle.bodyText1(
                                  context: context),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: blueLoyauteLight,
                              ),
                              padding: const EdgeInsets.symmetric(
                                vertical: 8.0,
                                horizontal: 12.0,
                              ),
                              margin: const EdgeInsets.only(right: 16.0),
                              child: Text(
                                '3 new',
                                style: LoyauteTextStyle.bodyText1(
                                  context: context,
                                  fontWeight: FontWeight.w500,
                                  color: blueLoyautePrimary,
                                )?.copyWith(fontSize: 12.0),
                              ),
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: grayLoyaute,
                              size: 16,
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8.0),
                              margin: const EdgeInsets.only(right: 8.0),
                              decoration: BoxDecoration(
                                  color: grayMood10,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(
                                imgNotif,
                                width: 24,
                              ),
                            ),
                            Text(
                              'Security',
                              style: LoyauteTextStyle.bodyText1(
                                  context: context),
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          color: grayLoyaute,
                          size: 16,
                        )
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 8.0, top: 16.0),
                      child: Text(
                        'GENERAL',
                        style: LoyauteTextStyle.bodyText1(
                          context: context,
                          color: grayLoyaute,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8.0),
                              margin: const EdgeInsets.only(right: 8.0),
                              decoration: BoxDecoration(
                                  color: grayMood10,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(
                                imgNotif,
                                width: 24,
                              ),
                            ),
                            Text(
                              'Help Center',
                              style: LoyauteTextStyle.bodyText1(
                                  context: context),
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          color: grayLoyaute,
                          size: 16,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8.0),
                              margin: const EdgeInsets.only(right: 8.0),
                              decoration: BoxDecoration(
                                  color: grayMood10,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(
                                imgNotif,
                                width: 24,
                              ),
                            ),
                            Text(
                              'Language',
                              style: LoyauteTextStyle.bodyText1(
                                  context: context),
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          color: grayLoyaute,
                          size: 16,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8.0),
                              margin: const EdgeInsets.only(right: 8.0),
                              decoration: BoxDecoration(
                                  color: grayMood10,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(
                                imgNotif,
                                width: 24,
                              ),
                            ),
                            Text(
                              'Terms of Service',
                              style: LoyauteTextStyle.bodyText1(
                                  context: context),
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          color: grayLoyaute,
                          size: 16,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8.0),
                              margin: const EdgeInsets.only(right: 8.0),
                              decoration: BoxDecoration(
                                  color: grayMood10,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(
                                imgNotif,
                                width: 24,
                              ),
                            ),
                            Text(
                              'Settings',
                              style: LoyauteTextStyle.bodyText1(
                                  context: context),
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          color: grayLoyaute,
                          size: 16,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 32.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                margin: const EdgeInsets.only(right: 8.0),
                                decoration: BoxDecoration(
                                    color: grayMood10,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(
                                  imgNotif,
                                  width: 24,
                                ),
                              ),
                              Text(
                                'Privacy Policy',
                                style: LoyauteTextStyle.bodyText1(
                                    context: context),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            color: grayLoyaute,
                            size: 16,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 330,
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

  void onEditProfilePressed(BuildContext context) {}
}
