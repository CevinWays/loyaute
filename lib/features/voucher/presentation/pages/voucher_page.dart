import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:loyaute/app/styles/colors.dart';
import 'package:loyaute/app/styles/loyaute_text_style.dart';
import 'package:loyaute/features/voucher/presentation/widgets/sliver_app_bar_delegate.dart';

List<String> imgList = [
  'assets/images/img_promo1.png',
  'assets/images/img_promo1.png',
  'assets/images/img_promo1.png'
];

class VoucherPage extends StatefulWidget {
  static const String routeName = '/voucher';

  const VoucherPage({super.key});

  @override
  State<VoucherPage> createState() => _VoucherPageState();
}

class _VoucherPageState extends State<VoucherPage> {
  int _current = 0;

  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return buildBody(context);
  }

  Widget buildBody(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
            GestureDetector(onTap: () => Navigator.pop(context), child: const Icon(Icons.arrow_back_ios, size: 15, color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Voucher Detail',
          style: LoyauteTextStyle.headline6(
            context: context,
            color: blackLoyaute,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: DefaultTabController(
        length: 5,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 234.0,
                floating: false,
                pinned: false,
                leading: Container(),
                flexibleSpace: Image.asset(
                  "assets/images/img_voucher_detail.png",
                  fit: BoxFit.cover,
                ),
              ),
              SliverPersistentHeader(
                delegate: SliverAppBarDelegate(
                  const TabBar(
                    labelColor: Colors.black87,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(text: "General"),
                      Tab(text: "Benefit"),
                      Tab(text: "How to get"),
                      Tab(text: "Terms and conditions"),
                      Tab(text: "Another promo"),
                    ],
                  ),
                ),
                pinned: true,
              ),
            ];
          },
          body: _buildContent(context),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _titleContent(context),
          _benefitContent(context),
          _howToGetContent(context),
          _termAndConditionContent(context),
          _anotherPromo(context),
          const SizedBox(height: 25),
        ],
      ),
    );
  }

  Widget _titleContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "assets/icons/ic_starbucks.png",
                width: 24,
                height: 24,
              ),
              const SizedBox(width: 5),
              Text(
                "Starbucks",
                style: LoyauteTextStyle.headline6(
                  context: context,
                  color: blackLoyaute,
                  fontWeight: FontWeight.w400,
                )?.copyWith(fontSize: 16),
              )
            ],
          ),
          const SizedBox(height: 10),
          Text(
            "STARBUCKS BUY ONE GET ONE",
            style: LoyauteTextStyle.headline6(
              context: context,
              color: blackLoyaute,
              fontWeight: FontWeight.w600,
            )?.copyWith(fontSize: 20),
          ),
          const Divider(
            thickness: 1,
            height: 35,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "assets/icons/ic_calendar.png",
                width: 40,
                height: 40,
              ),
              const SizedBox(width: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Expiry Date",
                    style: LoyauteTextStyle.headline6(
                      context: context,
                      color: grayLoyaute,
                      fontWeight: FontWeight.w500,
                    )?.copyWith(fontSize: 12),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "30 February 2024 - 07 March 2024",
                    style: LoyauteTextStyle.headline6(
                      context: context,
                      color: blackLoyaute,
                      fontWeight: FontWeight.w500,
                    )?.copyWith(fontSize: 12),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 15),
          Text(
            "Indulge in the ultimate coffee experience with our exclusive Starbucks Buy One Get One (BOGO) offer! Savor the rich flavors of your favorite handcrafted beverages while enjoying the delightful perk of getting a second one on the house. Embrace the joy of sharing and make every sip a moment to remember. Hurry, this limited-time offer is your perfect excuse to treat yourself and a friend to the comforting warmth and deliciousness of Starbucks. Terms and conditions apply; visit our stores or website for more details. Cheers to twice the enjoyment at Starbucks!",
            style: LoyauteTextStyle.headline6(
              context: context,
              color: blackLoyaute,
              fontWeight: FontWeight.w400,
            )?.copyWith(fontSize: 14),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(
              350 ~/ (10 + 5),
              (_) => Container(
                width: 10,
                height: 0.5,
                color: grayLoyaute,
                margin: const EdgeInsets.only(left: 5 / 2, right: 5 / 2),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _benefitContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Benefit",
            style: LoyauteTextStyle.headline6(
              context: context,
              color: blackLoyaute,
              fontWeight: FontWeight.w700,
            )?.copyWith(fontSize: 16),
          ),
          const SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(
                Icons.circle_rounded,
                color: Colors.black,
                size: 8,
              ),
              const SizedBox(width: 12),
              Text(
                "Double the Enjoyment:",
                style: LoyauteTextStyle.headline6(
                  context: context,
                  color: blackLoyaute,
                  fontWeight: FontWeight.w700,
                )?.copyWith(fontSize: 14),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 20),
              Expanded(
                child: Text(
                  "With the BOGO voucher, you get the opportunity to enjoy two Starbucks beverages for the price of one. This means you can savor your favorite coffee or try a new drink without worrying about the additional cost.",
                  style: LoyauteTextStyle.headline6(
                    context: context,
                    color: blackLoyaute,
                    fontWeight: FontWeight.w400,
                  )?.copyWith(fontSize: 14),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(
                Icons.circle_rounded,
                color: Colors.black,
                size: 8,
              ),
              const SizedBox(width: 12),
              Text(
                "Perfect for Sharing Moments:",
                style: LoyauteTextStyle.headline6(
                  context: context,
                  color: blackLoyaute,
                  fontWeight: FontWeight.w700,
                )?.copyWith(fontSize: 14),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 20),
              Expanded(
                child: Text(
                  "The BOGO voucher is ideal for sharing moments with friends, family, or colleagues. Whether it's catching up over coffee or surprising a loved one with their favorite Starbucks drink, the voucher enhances the social aspect of enjoying Starbucks together.",
                  style: LoyauteTextStyle.headline6(
                    context: context,
                    color: blackLoyaute,
                    fontWeight: FontWeight.w400,
                  )?.copyWith(fontSize: 14),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(
                Icons.circle_rounded,
                color: Colors.black,
                size: 8,
              ),
              const SizedBox(width: 12),
              Text(
                "Exploration of Flavors:",
                style: LoyauteTextStyle.headline6(
                  context: context,
                  color: blackLoyaute,
                  fontWeight: FontWeight.w700,
                )?.copyWith(fontSize: 14),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 20),
              Expanded(
                child: Text(
                  "Use the BOGO voucher to explore a variety of flavors and beverages. Try a different coffee blend, experiment with various syrups, or opt for a seasonal specialty drink. This promotion encourages customers to broaden their taste preferences",
                  style: LoyauteTextStyle.headline6(
                    context: context,
                    color: blackLoyaute,
                    fontWeight: FontWeight.w400,
                  )?.copyWith(fontSize: 14),
                ),
              ),
            ],
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }

  Widget _howToGetContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "How to get",
            style: LoyauteTextStyle.headline6(
              context: context,
              color: blackLoyaute,
              fontWeight: FontWeight.w700,
            )?.copyWith(fontSize: 16),
          ),
          const SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "1.",
                style: LoyauteTextStyle.headline6(
                  context: context,
                  color: blackLoyaute,
                  fontWeight: FontWeight.w700,
                )?.copyWith(fontSize: 14),
              ),
              const SizedBox(width: 12),
              Text(
                "Visit Starbucks",
                style: LoyauteTextStyle.headline6(
                  context: context,
                  color: blackLoyaute,
                  fontWeight: FontWeight.w700,
                )?.copyWith(fontSize: 14),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 26),
              Expanded(
                child: Text(
                  "Swing by any participating Starbucks store.",
                  style: LoyauteTextStyle.headline6(
                    context: context,
                    color: blackLoyaute,
                    fontWeight: FontWeight.w400,
                  )?.copyWith(fontSize: 14),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "2.",
                style: LoyauteTextStyle.headline6(
                  context: context,
                  color: blackLoyaute,
                  fontWeight: FontWeight.w700,
                )?.copyWith(fontSize: 14),
              ),
              const SizedBox(width: 12),
              Text(
                "Order Your Favorite:",
                style: LoyauteTextStyle.headline6(
                  context: context,
                  color: blackLoyaute,
                  fontWeight: FontWeight.w700,
                )?.copyWith(fontSize: 14),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 26),
              Expanded(
                child: Text(
                  "Choose your go-to handcrafted beverage from the menu.",
                  style: LoyauteTextStyle.headline6(
                    context: context,
                    color: blackLoyaute,
                    fontWeight: FontWeight.w400,
                  )?.copyWith(fontSize: 14),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "3.",
                style: LoyauteTextStyle.headline6(
                  context: context,
                  color: blackLoyaute,
                  fontWeight: FontWeight.w700,
                )?.copyWith(fontSize: 14),
              ),
              const SizedBox(width: 12),
              Text(
                "Mention BOGO at Checkout:",
                style: LoyauteTextStyle.headline6(
                  context: context,
                  color: blackLoyaute,
                  fontWeight: FontWeight.w700,
                )?.copyWith(fontSize: 14),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 26),
              Expanded(
                child: Text(
                  "Inform the barista you're here for the Buy One Get One deal when placing your order.",
                  style: LoyauteTextStyle.headline6(
                    context: context,
                    color: blackLoyaute,
                    fontWeight: FontWeight.w400,
                  )?.copyWith(fontSize: 14),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "4.",
                style: LoyauteTextStyle.headline6(
                  context: context,
                  color: blackLoyaute,
                  fontWeight: FontWeight.w700,
                )?.copyWith(fontSize: 14),
              ),
              const SizedBox(width: 12),
              Text(
                "Enjoy the Extra Treat:",
                style: LoyauteTextStyle.headline6(
                  context: context,
                  color: blackLoyaute,
                  fontWeight: FontWeight.w700,
                )?.copyWith(fontSize: 14),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 26),
              Expanded(
                child: Text(
                  "Pay for one drink and savor a second one for free. Limited time only, so seize the moment!",
                  style: LoyauteTextStyle.headline6(
                    context: context,
                    color: blackLoyaute,
                    fontWeight: FontWeight.w400,
                  )?.copyWith(fontSize: 14),
                ),
              ),
            ],
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }

  Widget _termAndConditionContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Terms and conditions",
            style: LoyauteTextStyle.headline6(
              context: context,
              color: blackLoyaute,
              fontWeight: FontWeight.w700,
            )?.copyWith(fontSize: 16),
          ),
          const SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "1.",
                style: LoyauteTextStyle.headline6(
                  context: context,
                  color: blackLoyaute,
                  fontWeight: FontWeight.w400,
                )?.copyWith(fontSize: 14),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  "This promotion is valid for a limited time only and is subject to change without notice.",
                  style: LoyauteTextStyle.headline6(
                    context: context,
                    color: blackLoyaute,
                    fontWeight: FontWeight.w400,
                  )?.copyWith(fontSize: 14),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "2.",
                style: LoyauteTextStyle.headline6(
                  context: context,
                  color: blackLoyaute,
                  fontWeight: FontWeight.w400,
                )?.copyWith(fontSize: 14),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  "To avail of the Buy One Get One (BOGO) offer, customers must purchase a qualifying beverage at the regular price to receive a second beverage of equal or lesser value at no additional cost.",
                  style: LoyauteTextStyle.headline6(
                    context: context,
                    color: blackLoyaute,
                    fontWeight: FontWeight.w400,
                  )?.copyWith(fontSize: 14),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "3.",
                style: LoyauteTextStyle.headline6(
                  context: context,
                  color: blackLoyaute,
                  fontWeight: FontWeight.w400,
                )?.copyWith(fontSize: 14),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  "The BOGO offer is applicable to select handcrafted beverages and sizes, as determined by Starbucks. Exclusions may apply.",
                  style: LoyauteTextStyle.headline6(
                    context: context,
                    color: blackLoyaute,
                    fontWeight: FontWeight.w400,
                  )?.copyWith(fontSize: 14),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "4.",
                style: LoyauteTextStyle.headline6(
                  context: context,
                  color: blackLoyaute,
                  fontWeight: FontWeight.w400,
                )?.copyWith(fontSize: 14),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  "This promotion is valid at participating Starbucks stores only. Please check with your local store to confirm participation.",
                  style: LoyauteTextStyle.headline6(
                    context: context,
                    color: blackLoyaute,
                    fontWeight: FontWeight.w400,
                  )?.copyWith(fontSize: 14),
                ),
              ),
            ],
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }

  Widget _anotherPromo(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Column(
        children: [
          Expanded(
            child: CarouselSlider(
              items: imageSliders,
              carouselController: _controller,
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                },
              ),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 10.0,
                  height: 10.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black)
                          .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  final List<Widget> imageSliders = imgList
      .map((item) => Container(
            margin: const EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                child: Image.asset(item, fit: BoxFit.cover, width: 1000.0)),
          ))
      .toList();
}
