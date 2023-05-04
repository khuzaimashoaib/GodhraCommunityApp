import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:godhra_community/components/appBar.dart';
import 'package:godhra_community/components/containers.dart';
import 'package:godhra_community/colors/gradient.dart';
import 'package:godhra_community/components/toastClass.dart';
import 'package:godhra_community/pages/drawer_pages/main_drawer.dart';
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

  Color color = const Color.fromARGB(255, 45, 156, 178);

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

        title: AppBarTitle(color: color),
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
        top: 20,
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
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          height: deviceHeight! * 0.14,
          // color: Colors.grey[700],
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Containers(
                      textStyle: textstyle2,
                      imagePath: 'assets/images/img_donor_icon.png',
                      color: myGradient(Color.fromARGB(255, 199, 56, 56),
                          Color.fromARGB(252, 226, 107, 107)),
                      name: "Donor list",
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Containers(
                      textStyle: textstyle2,
                      imagePath: 'assets/images/img_store_icon.png',
                      color: myGradient(Color.fromARGB(100, 55, 187, 202),
                          Color.fromARGB(252, 86, 214, 228)),
                      name: "Store",
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Containers(
                      textStyle: textstyle2,
                      imagePath: "assets/images/img_doctor_consultant_icon.png",
                      color: myGradient(
                          Color.fromARGB(
                            255,
                            231,
                            157,
                            70,
                          ),
                          Color.fromARGB(255, 242, 179, 105)),
                      name: "Doctor Consultation",
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Containers(
                      textStyle: textstyle2,
                      imagePath: "assets/images/img_discussion_icon.png",
                      color: myGradient(Color.fromARGB(255, 222, 90, 111),
                          Color.fromARGB(255, 234, 116, 135)),
                      name: "Discussion",
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget middleRow() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          height: deviceHeight! * 0.14,
          // color: Colors.grey[700],
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Containers(
                      textStyle: textstyle2,
                      imagePath: 'assets/images/img_tv_icon.png',
                      color: myGradient(Color.fromARGB(255, 196, 99, 153),
                          Color.fromARGB(252, 211, 130, 175)),
                      name: "Online TV",
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Containers(
                      textStyle: textstyle2,
                      imagePath: 'assets/images/img_book_icon.png',
                      color: myGradient(Color.fromARGB(255, 186, 201, 74),
                          Color.fromARGB(252, 215, 228, 114)),
                      name: "Godhra History",
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Containers(
                      textStyle: textstyle2,
                      imagePath: "assets/images/img_hospital_icon.png",
                      color: myGradient(Color.fromARGB(255, 108, 140, 191),
                          Color.fromARGB(255, 129, 160, 208)),
                      name: "Clinics and Hospitals",
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Containers(
                      textStyle: textstyle2,
                      imagePath: "assets/images/img_hospital_icon.png",
                      name: "Job Ads",
                      color: myGradient(Color.fromARGB(100, 78, 180, 155),
                          Color.fromARGB(255, 129, 206, 187)),
                    ),
                  ],
                ),
              )
            ],
          ),
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
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Containers(
                      textStyle: textStyle,
                      imagePath: 'assets/images/img_notification_icon.png',
                      color: myGradient(Color.fromARGB(255, 26, 167, 236),
                          Color.fromARGB(255, 76, 192, 249)),
                      name: "Notification",
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Containers(
                      textStyle: textStyle,
                      imagePath: 'assets/images/img_contact_icon.png',
                      color: myGradient(Color.fromARGB(255, 198, 163, 121),
                          Color.fromARGB(252, 212, 179, 139)),
                      name: "Contacts",
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Containers(
                      textStyle: textStyle,
                      imagePath: "assets/images/img_request_icon.png",
                      color: myGradient(Color.fromARGB(255, 233, 117, 92),
                          Color.fromARGB(255, 245, 150, 129)),
                      name: "Request",
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          '/requestPage',
                        );
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Containers(
                      textStyle: textStyle,
                      imagePath: "assets/images/img_settings_icon.png",
                      color: myGradient(Color.fromARGB(255, 156, 156, 156),
                          Color.fromARGB(252, 192, 193, 193)),
                      name: "Settings",
                      onTap: () {
                        showToast('Under Development');
                      },
                    ),
                  ],
                ),
              )
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
              color: color,
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
          activeDotColor: color,
          dotHeight: 3,
          dotWidth: 15,
          radius: 0,
          expansionFactor: 2,
          spacing: 5,
        ),
      ),
    );
  }
}
