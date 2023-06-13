import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  double? deviceHeight, deviceWidth;

  @override
  void initState() {
    super.initState();
    _navigateToOnBoarding();
  }

  _navigateToOnBoarding() async {
    await Future.delayed(
        const Duration(
          seconds: 3,
        ), () {
      Navigator.pushReplacementNamed(context, '/onBoarding');
    });
  }

  @override
  Widget build(BuildContext context) {
    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Container(
            alignment: Alignment.center,
            // color: Colors.black,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                imageWidget(),
              ],
            )),
      ),
    );
  }

  Widget imageWidget() {
    return Image.asset(
      "assets/images/img_logo_main.png",
      height: 350,
      width: 320,
      alignment: Alignment.center,
    );
  }
}
