import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:godhra_community/colors/color_constant.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int _currentPage = 0;
  final List<String> _images = [
    'assets/images/img_onboard_1.png',
    'assets/images/img_onboard_2.png',
    'assets/images/img_onboard_3.png',
    'assets/images/img_onboard_4.png',
  ];
  final List<String> _texts = [
    'Stay Connected with Community',
    'Help your community',
    'Be a part in every event',
    'Online Shopping',
  ];

  CarouselController _carouselController = CarouselController();

  TextStyle style = TextStyle(
    fontSize: 20.0,
    fontFamily: 'Ubuntu',
    fontWeight: FontWeight.w400,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 120,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: slider(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _buildPageIndicator(),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  _texts[_currentPage],
                  style: style,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          buttonRow(),
        ],
      ),
    );
  }

  Widget slider() {
    return CarouselSlider(
      options: CarouselOptions(
        onPageChanged: (index, _) {
          setState(
            () {
              _currentPage = index;
            },
          );
        },
        viewportFraction: 1,
      ),

      items: _images.map((image) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              // height: MediaQuery.of(context).size.height,
              // width: double.infinity,

              // margin: EdgeInsets.symmetric(horizontal: ),
              child: ClipRect(
                child: Image.asset(
                  image,
                  height: 300, // set the height of the image
                  width: double
                      .infinity, // set the width of the image to fill the container
                ),
              ),
            );
          },
        );
      }).toList(),

      // Image.asset(image, fit: BoxFit.cover,);}).toList(),

      carouselController: _carouselController,
    );
  }

  Widget buttonRow() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 100, bottom: 30),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/dashboard');
              },
              child: Text('Skip',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey[400])),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 75, bottom: 30),
            child: GestureDetector(
                onTap: () {
                  if (_currentPage < _images.length - 1) {
                    _carouselController.nextPage();
                    setState(() {
                      _currentPage++;
                    });
                  } else {
                    Navigator.pushNamed(context, '/dashboard');
                  }
                  // Handle Next button pressed on last image
                },
                child: Text(_currentPage < _images.length - 1 ? 'Next' : 'Done',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: ColorConstant.color))),
          ),
        ),
      ],
    );
  }

  List<Widget> _buildPageIndicator() {
    return List.generate(
      _images.length,
      (index) => Container(
        width: 15,
        height: 15,
        margin: EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: _currentPage == index ? ColorConstant.color : Colors.grey,
        ),
      ),
    );
  }
}
