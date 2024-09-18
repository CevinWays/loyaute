import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loyaute/app/consts/loyaute_images.dart';
import 'package:loyaute/app/styles/colors.dart';
import 'package:loyaute/features/history/presentation/pages/history_page.dart';
import 'package:loyaute/features/home/presentation/get/home_controller.dart';
import 'package:loyaute/features/profile/presentation/pages/profile_page.dart';
import 'package:loyaute/features/voucher/presentation/pages/voucher_page.dart';

import '../../../../app/styles/loyaute_text_style.dart';

class HomePage extends GetView<HomeController> {
  static const String routeName = '/home';

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(context),
      bottomNavigationBar: buildBottomNavBar(context),
    );
  }

  Widget buildBottomNavBar(BuildContext context) {
    return BottomNavigationBar(
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
                    GestureDetector(
                      onTap: () => onVoucherPressed(context),
                      child: Column(
                        children: [
                          Container(
                            width: 56.0,
                            height: 56.0,
                            decoration: const ShapeDecoration(
                                color: blueLoyautePrimary,
                                shape: CircleBorder()),
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
              const SizedBox(height: 32),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  'Latest Promo',
                  textAlign: TextAlign.start,
                  style: LoyauteTextStyle.subtitle2(
                    context: context,
                    color: blackLoyaute,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Obx(
                () => SizedBox(
                  height: 200,
                  child: Column(
                    children: [
                      Expanded(
                        child: CarouselSlider(
                          items: imageSliders,
                          carouselController: controller.carouselController,
                          options: CarouselOptions(
                            autoPlay: true,
                            enlargeCenterPage: true,
                            aspectRatio: 2.0,
                            onPageChanged: (index, reason) {
                              controller.imageChanged(index);
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: imgList.asMap().entries.map((entry) {
                          return GestureDetector(
                            onTap: () => controller.carouselController
                                .animateToPage(entry.key),
                            child: Container(
                              width: 10.0,
                              height: 10.0,
                              margin: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 4.0),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: (Theme.of(context).brightness ==
                                              Brightness.dark
                                          ? Colors.white
                                          : Colors.black)
                                      .withOpacity(
                                          controller.current == entry.key
                                              ? 0.9
                                              : 0.4)),
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 16, left: 24, right: 24),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Popular Merchant',
                          style: LoyauteTextStyle.subtitle2(
                            context: context,
                            color: blackLoyaute,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'View more',
                          style: LoyauteTextStyle.caption(
                            context: context,
                            color: blueLoyautePrimary,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 16.0, left: 8.0),
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Column(
                        children: [
                          Container(
                            width: 64.0,
                            height: 64.0,
                            decoration: const ShapeDecoration(
                                color: blueLoyautePrimary,
                                shape: CircleBorder()),
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
                            'Pizza Hut',
                            style: LoyauteTextStyle.bodyText1(
                              context: context,
                              color: blackLoyaute,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: 7,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 16, left: 24, right: 24),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Popular Rewards',
                          style: LoyauteTextStyle.subtitle2(
                            context: context,
                            color: blackLoyaute,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'View more',
                          style: LoyauteTextStyle.caption(
                            context: context,
                            color: blueLoyautePrimary,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 16.0, left: 16.0),
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: grayLoyaute2,
                            ),
                            padding: const EdgeInsets.symmetric(
                              vertical: 12.0,
                              horizontal: 12.0,
                            ),
                            child: Row(
                              children: [
                                Image.asset(
                                  imgLoyauteBlue,
                                  width: 18.0,
                                ),
                                const SizedBox(
                                  width: 4.0,
                                ),
                                Text(
                                  'Food',
                                  style: LoyauteTextStyle.bodyText1(
                                    context: context,
                                    fontWeight: FontWeight.w500,
                                  )?.copyWith(fontSize: 12.0),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: 7,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 8.0,
                  bottom: 16.0,
                ),
                child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1.70,
                  shrinkWrap: true,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 158,
                          height: 158,
                          decoration: BoxDecoration(
                              color: blueLoyautePrimary,
                              borderRadius: BorderRadius.circular(11.0)),
                          padding: const EdgeInsets.all(8),
                          child: const Text(''),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 16.0,
                              height: 16.0,
                              margin: const EdgeInsets.only(right: 8.0),
                              decoration: const ShapeDecoration(
                                  color: blueLoyautePrimary,
                                  shape: CircleBorder()),
                              child: Image.asset(
                                imgLoyauteBlue,
                              ),
                            ),
                            Text(
                              'Starbucks',
                              style:
                                  LoyauteTextStyle.bodyText1(context: context),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          'Monday Mood Booster',
                          overflow: TextOverflow.ellipsis,
                          style: LoyauteTextStyle.subtitle1(
                              context: context, fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          'Point earned',
                          style: LoyauteTextStyle.bodyText1(
                            context: context,
                            color: grayLoyaute1,
                          ),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 16.0,
                              height: 16.0,
                              margin: const EdgeInsets.only(right: 8.0),
                              decoration: const ShapeDecoration(
                                  color: blueLoyautePrimary,
                                  shape: CircleBorder()),
                              child: Image.asset(
                                imgLoyauteBlue,
                              ),
                            ),
                            Text(
                              '250',
                              style:
                                  LoyauteTextStyle.bodyText1(context: context),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 158,
                          height: 158,
                          decoration: BoxDecoration(
                              color: blueLoyautePrimary,
                              borderRadius: BorderRadius.circular(11.0)),
                          padding: const EdgeInsets.all(8),
                          child: const Text(''),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 16.0,
                              height: 16.0,
                              margin: const EdgeInsets.only(right: 8.0),
                              decoration: const ShapeDecoration(
                                  color: blueLoyautePrimary,
                                  shape: CircleBorder()),
                              child: Image.asset(
                                imgLoyauteBlue,
                              ),
                            ),
                            Text(
                              'Starbucks',
                              style:
                                  LoyauteTextStyle.bodyText1(context: context),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          'Monday Mood Booster',
                          overflow: TextOverflow.ellipsis,
                          style: LoyauteTextStyle.subtitle1(
                              context: context, fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          'Point earned',
                          style: LoyauteTextStyle.bodyText1(
                            context: context,
                            color: grayLoyaute1,
                          ),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 16.0,
                              height: 16.0,
                              margin: const EdgeInsets.only(right: 8.0),
                              decoration: const ShapeDecoration(
                                  color: blueLoyautePrimary,
                                  shape: CircleBorder()),
                              child: Image.asset(
                                imgLoyauteBlue,
                              ),
                            ),
                            Text(
                              '250',
                              style:
                                  LoyauteTextStyle.bodyText1(context: context),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 158,
                          height: 158,
                          decoration: BoxDecoration(
                              color: blueLoyautePrimary,
                              borderRadius: BorderRadius.circular(11.0)),
                          padding: const EdgeInsets.all(8),
                          child: const Text(''),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 16.0,
                              height: 16.0,
                              margin: const EdgeInsets.only(right: 8.0),
                              decoration: const ShapeDecoration(
                                  color: blueLoyautePrimary,
                                  shape: CircleBorder()),
                              child: Image.asset(
                                imgLoyauteBlue,
                              ),
                            ),
                            Text(
                              'Starbucks',
                              style:
                                  LoyauteTextStyle.bodyText1(context: context),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          'Monday Mood Booster',
                          overflow: TextOverflow.ellipsis,
                          style: LoyauteTextStyle.subtitle1(
                              context: context, fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          'Point earned',
                          style: LoyauteTextStyle.bodyText1(
                            context: context,
                            color: grayLoyaute1,
                          ),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 16.0,
                              height: 16.0,
                              margin: const EdgeInsets.only(right: 8.0),
                              decoration: const ShapeDecoration(
                                  color: blueLoyautePrimary,
                                  shape: CircleBorder()),
                              child: Image.asset(
                                imgLoyauteBlue,
                              ),
                            ),
                            Text(
                              '250',
                              style:
                                  LoyauteTextStyle.bodyText1(context: context),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 158,
                          height: 158,
                          decoration: BoxDecoration(
                              color: blueLoyautePrimary,
                              borderRadius: BorderRadius.circular(11.0)),
                          padding: const EdgeInsets.all(8),
                          child: const Text(''),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 16.0,
                              height: 16.0,
                              margin: const EdgeInsets.only(right: 8.0),
                              decoration: const ShapeDecoration(
                                  color: blueLoyautePrimary,
                                  shape: CircleBorder()),
                              child: Image.asset(
                                imgLoyauteBlue,
                              ),
                            ),
                            Text(
                              'Starbucks',
                              style:
                                  LoyauteTextStyle.bodyText1(context: context),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          'Monday Mood Booster',
                          overflow: TextOverflow.ellipsis,
                          style: LoyauteTextStyle.subtitle1(
                              context: context, fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          'Point earned',
                          style: LoyauteTextStyle.bodyText1(
                            context: context,
                            color: grayLoyaute1,
                          ),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 16.0,
                              height: 16.0,
                              margin: const EdgeInsets.only(right: 8.0),
                              decoration: const ShapeDecoration(
                                  color: blueLoyautePrimary,
                                  shape: CircleBorder()),
                              child: Image.asset(
                                imgLoyauteBlue,
                              ),
                            ),
                            Text(
                              '250',
                              style:
                                  LoyauteTextStyle.bodyText1(context: context),
                            ),
                          ],
                        ),
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

  void onVoucherPressed(BuildContext context) =>
      Get.toNamed(VoucherPage.routeName);

  final List<Widget> imageSliders = [
    'assets/images/img_promo1.png',
    'assets/images/img_promo1.png',
    'assets/images/img_promo1.png'
  ]
      .map((item) => Container(
            margin: const EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                child: Image.asset(item, fit: BoxFit.cover, width: 1000.0)),
          ))
      .toList();
}
