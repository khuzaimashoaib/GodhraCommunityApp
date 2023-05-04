import 'package:flutter/material.dart';
import 'package:godhra_community/components/drawer/contactAlertDialog.dart';
import 'package:godhra_community/components/drawer/customListTile.dart';
import 'package:share_plus/share_plus.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({super.key});

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            headerDrawer(),
            listDrawer(),
          ],
        ),
      ),
    );
  }

  Widget headerDrawer() {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color.fromARGB(
                255,
                43,
                171,
                196,
              ),
              Color.fromARGB(255, 94, 219, 243),
            ],
          ),
        ),
        padding: const EdgeInsets.only(top: 20),
        height: 150,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
            children: [
              drawerImage(),
              headerTextNameNumber(),
            ],
          ),
        ),
      ),
    );
  }

  Widget drawerImage() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, bottom: 10),
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/pi.png'),
          ),
        ),
      ),
    );
  }

  Widget headerTextNameNumber() {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Khuzaima Shoaib',
            style: const TextStyle(
              fontFamily: 'Ubuntu',
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            '03182112360',
            style: const TextStyle(
              fontFamily: 'Ubuntu',
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }

  Widget listDrawer() {
    return Column(
      children: [
        CustomListTile(
          Icons.person,
          'Profile',
          () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/profile');
          },
        ),
        CustomListTile(
          Icons.phone,
          'Contact Us',
          () {
            Navigator.pop(context);
            showDialog(
                context: context,
                builder: (context) {
                  return ContactAlertDialog();
                });
          },
        ),
        CustomListTile(
          Icons.share,
          'Share',
          () {
            Navigator.pop(context);
            Share.share(
                'Android App : https://play.google.com/store/apps/details?id=com.gma11f.smscaster'
                '\n\niOs App : https://itunes.apple.com/us/app/godhra-community/id1462035307?mt=8');
          },
        ),
        CustomListTile(
          Icons.privacy_tip,
          'Privacy Policy',
          () {
            Navigator.pushNamed(context, '/privacyPolicy');
          },
        ),
        CustomListTile(
          Icons.logout,
          'Sign Out',
          () {},
        ),
      ],
    );
  }
}
