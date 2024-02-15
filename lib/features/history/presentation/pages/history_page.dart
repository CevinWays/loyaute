import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loyaute/app/styles/loyaute_text_style.dart';
import 'package:loyaute/features/history/presentation/get/history_controller.dart';

import '../../../../app/consts/loyaute_images.dart';
import '../../../../app/styles/colors.dart';

class HistoryPage extends GetView<HistoryController> {
  static const String routeName = '/history';
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 48, bottom: 16.0),
            child: Text(
              'History',
              style: LoyauteTextStyle.headline6(
                context: context,
                color: blackLoyaute,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                child: Text(
                  'December 2023',
                  style: LoyauteTextStyle.bodyText1(
                      context: context, color: grayLoyaute),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8.0),
                          margin: EdgeInsets.only(right: 8.0),
                          decoration: BoxDecoration(
                              color: blueLoyautePrimary,
                              borderRadius: BorderRadius.circular(20)),
                          child: Image.asset(
                            imgLoyautePlain,
                            width: 24,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Starbucks',
                              style:
                                  LoyauteTextStyle.bodyText1(context: context),
                            ),
                            Text(
                              '25 December 2023, 10:24',
                              style: LoyauteTextStyle.bodyText2(
                                      context: context, color: grayLoyaute)
                                  ?.copyWith(fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      '+50 point',
                      style: LoyauteTextStyle.bodyText1(context: context),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8.0),
                          margin: EdgeInsets.only(right: 8.0),
                          decoration: BoxDecoration(
                              color: blueLoyautePrimary,
                              borderRadius: BorderRadius.circular(20)),
                          child: Image.asset(
                            imgLoyautePlain,
                            width: 24,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Starbucks',
                              style:
                                  LoyauteTextStyle.bodyText1(context: context),
                            ),
                            Text(
                              '25 December 2023, 10:24',
                              style: LoyauteTextStyle.bodyText2(
                                      context: context, color: grayLoyaute)
                                  ?.copyWith(fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      '+50 point',
                      style: LoyauteTextStyle.bodyText1(context: context),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8.0),
                          margin: EdgeInsets.only(right: 8.0),
                          decoration: BoxDecoration(
                              color: blueLoyautePrimary,
                              borderRadius: BorderRadius.circular(20)),
                          child: Image.asset(
                            imgLoyautePlain,
                            width: 24,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Starbucks',
                              style:
                                  LoyauteTextStyle.bodyText1(context: context),
                            ),
                            Text(
                              '25 December 2023, 10:24',
                              style: LoyauteTextStyle.bodyText2(
                                      context: context, color: grayLoyaute)
                                  ?.copyWith(fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      '+50 point',
                      style: LoyauteTextStyle.bodyText1(context: context),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                child: Text(
                  'November 2023',
                  style: LoyauteTextStyle.bodyText1(
                      context: context, color: grayLoyaute),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8.0),
                          margin: EdgeInsets.only(right: 8.0),
                          decoration: BoxDecoration(
                              color: blueLoyautePrimary,
                              borderRadius: BorderRadius.circular(20)),
                          child: Image.asset(
                            imgLoyautePlain,
                            width: 24,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Starbucks',
                              style:
                                  LoyauteTextStyle.bodyText1(context: context),
                            ),
                            Text(
                              '25 December 2023, 10:24',
                              style: LoyauteTextStyle.bodyText2(
                                      context: context, color: grayLoyaute)
                                  ?.copyWith(fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      '+50 point',
                      style: LoyauteTextStyle.bodyText1(context: context),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8.0),
                          margin: EdgeInsets.only(right: 8.0),
                          decoration: BoxDecoration(
                              color: blueLoyautePrimary,
                              borderRadius: BorderRadius.circular(20)),
                          child: Image.asset(
                            imgLoyautePlain,
                            width: 24,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Starbucks',
                              style:
                                  LoyauteTextStyle.bodyText1(context: context),
                            ),
                            Text(
                              '25 December 2023, 10:24',
                              style: LoyauteTextStyle.bodyText2(
                                      context: context, color: grayLoyaute)
                                  ?.copyWith(fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      '+50 point',
                      style: LoyauteTextStyle.bodyText1(context: context),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8.0),
                          margin: EdgeInsets.only(right: 8.0),
                          decoration: BoxDecoration(
                              color: blueLoyautePrimary,
                              borderRadius: BorderRadius.circular(20)),
                          child: Image.asset(
                            imgLoyautePlain,
                            width: 24,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Starbucks',
                              style:
                                  LoyauteTextStyle.bodyText1(context: context),
                            ),
                            Text(
                              '25 December 2023, 10:24',
                              style: LoyauteTextStyle.bodyText2(
                                      context: context, color: grayLoyaute)
                                  ?.copyWith(fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      '+50 point',
                      style: LoyauteTextStyle.bodyText1(context: context),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
