import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:godhra_community/colors/colors.dart';
import 'package:godhra_community/colors/theme_provider.dart';
import 'package:godhra_community/components/drawer/map_page.dart';
import 'package:godhra_community/pages/dashboard.dart';
import 'package:godhra_community/pages/drawer_pages/privacy_policy.dart';
import 'package:godhra_community/pages/drawer_pages/profile_screen.dart';
import 'package:godhra_community/pages/request_pages/requestPage.dart';
import 'package:godhra_community/pages/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: FToastBuilder(),
      debugShowCheckedModeBanner: false,
      title: "Godhra Community",
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
      themeMode: ThemeMode.system,
      initialRoute: '/',
      routes: {
        '/': (context) => const Splash(),
        '/dashboard': (context) => const Dashboard(),
        '/privacyPolicy': (context) => const PrivacyPolicy(),
        '/requestPage': (context) => const RequestPage(),
        '/profile': (context) => ProfileView(),
        '/mapPage':(context) => MapPage(),
      },
    );
  }
}
