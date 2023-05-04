import 'package:flutter/material.dart';
import 'package:godhra_community/pages/dashboard.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  double? deviceHeight, deviceWidth;

  Color color = const Color.fromARGB(255, 25, 148, 172);

  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(
          seconds: 3,
        ), () {
      Navigator.pushReplacementNamed(context, '/dashboard');
    });
  }

  @override
  Widget build(BuildContext context) {
    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: ThemeData.dark().primaryColor,
      body: SafeArea(
        child: Container(
            alignment: Alignment.center,
            color: Colors.black,
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
