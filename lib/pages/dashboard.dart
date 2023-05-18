import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:godhra_community/colors/color_constant.dart';
import 'package:godhra_community/components/appBar.dart';
import 'package:godhra_community/components/containers.dart';
import 'package:godhra_community/colors/gradient.dart';
import 'package:godhra_community/components/toastClass.dart';
import 'package:godhra_community/pages/drawer_pages/main_drawer.dart';
import 'package:godhra_community/text/text_constant.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Dashboard extends StatefulWidget {
  // const Dashboard({super.key});
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final controller = PageController();
  double? deviceHeight, deviceWidth;

  TextStyle? textStyle, textstyle2;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Color colorBg = MediaQuery.of(context).platformBrightness == Brightness.dark
        ? Colors.grey.shade900
        : Colors.white;

    textstyle2 = TextStyle(
      fontFamily: 'Ubuntu',
      fontWeight: FontWeight.w100,
      fontSize: 12,
    );
    textStyle = TextStyle(
      fontFamily: 'Ubuntu',
      fontWeight: FontWeight.bold,
      fontSize: 12,
    );
    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('assets/images/icn_burger_black.png'),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
        // iconTheme: IconThemeData(color: Colors.grey),
        centerTitle: true,
        backgroundColor: colorBg,

        title: AppBarTitle(color: ColorConstant.color),
      ),
      drawer: MainDrawer(),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              moveableSlider(),
              sliderBullets(),
              startRow(),
              middleRow(),
              recentNotification(),
              endingRow(),
            ],
          ),
        ),
      ),
    );
  }

  Widget sliderBullets() {
    return SizedBox(
        height: deviceHeight! * 0.06,
        child: Container(
            // color: Colors.grey,
            // height: deviceHeight! * 0.050,
            child: pageIndicator()));
  }

  Widget moveableSlider() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        left: 20,
        right: 20,
      ),
      child: Container(
          // color: Colors.grey,
          height: deviceHeight! * 0.20,
          child: sliderPage()),
    );
  }

  Widget recentNotification() {
    return Expanded(
      child: SizedBox(
        height: deviceHeight! * 0.12,
        child: Container(
          width: deviceWidth! * 0.9,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }

  Widget pageDivider() {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Divider(
        color: Colors.grey[800],
      ),
    );
  }

  Widget startRow() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buttons(ColorConstant.fRowC1, TextConstant.fRowC1,
                'assets/images/img_donor_icon.png', textstyle2, () {}),
            buttons(ColorConstant.fRowC2, TextConstant.fRowC2,
                'assets/images/img_store_icon.png', textstyle2, () {}),
            buttons(
                ColorConstant.fRowC3,
                TextConstant.fRowC3,
                'assets/images/img_doctor_consultant_icon.png',
                textstyle2,
                () {}),
            buttons(
              ColorConstant.fRowC4,
              TextConstant.fRowC4,
              'assets/images/img_discussion_icon.png',
              textstyle2,
              () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget middleRow() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buttons(ColorConstant.sRowC1, TextConstant.sRowC1,
                'assets/images/img_tv_icon.png', textstyle2, () {
              Navigator.pushNamed(context, '/onlineTV');
            }),
            buttons(ColorConstant.sRowC2, TextConstant.sRowC2,
                'assets/images/img_book_icon.png', textstyle2, () {}),
            buttons(ColorConstant.sRowC3, TextConstant.sRowC3,
                'assets/images/img_hospital_icon.png', textstyle2, () {
              Navigator.pushNamed(context, '/clinicAndHospital');
            }),
            buttons(ColorConstant.sRowC4, TextConstant.sRowC4,
                'assets/images/img_hospital_icon.png', textstyle2, () {})
          ],
        ),
      ),
    );
  }

  Widget endingRow() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        pageDivider(),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buttons(ColorConstant.tRowC1, TextConstant.tRowC1,
                  'assets/images/img_notification_icon.png', textStyle, () {}),
              buttons(ColorConstant.tRowC2, TextConstant.tRowC2,
                  'assets/images/img_contact_icon.png', textStyle, () {}),
              buttons(ColorConstant.tRowC3, TextConstant.tRowC3,
                  'assets/images/img_request_icon.png', textStyle, () {
                Navigator.pushNamed(
                  context,
                  '/requestPage',
                );
              }),
              buttons(ColorConstant.tRowC4, TextConstant.tRowC4,
                  'assets/images/img_settings_icon.png', textStyle, () {
                showToast('Under Development');
              }),
            ],
          ),
        ),
      ],
    );
  }

  Widget sliderPage() {
    return PageView(
      controller: controller,
      scrollDirection: Axis.horizontal,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              "assets/images/img_ad_banner.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Container(
            height: 115,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: ColorConstant.color,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Create Request for your Ads",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget pageIndicator() {
    return Container(
      child: SmoothPageIndicator(
        controller: controller,
        count: 2,
        effect: ExpandingDotsEffect(
          dotColor: Colors.grey,
          activeDotColor: ColorConstant.color,
          dotHeight: 3,
          dotWidth: 16,
          radius: 0,
          expansionFactor: 02,
          spacing: 5,
        ),
      ),
    );
  }

  Widget buttons(
    LinearGradient color,
    String name,
    String imagePath,
    TextStyle? textStyle,
    VoidCallback onTap,
  ) {
    return Expanded(
      child: Column(
        children: [
          GestureDetector(
            onTap: onTap,
            child: Containers(
              textStyle: textStyle,
              imagePath: imagePath,
              color: color,
              name: name,
            ),
          ),
        ],
      ),
    );
  }
}
