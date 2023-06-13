import 'package:flutter/material.dart';
import 'package:godhra_community/components/appBar.dart';
import 'package:godhra_community/pages/Contacts/contacts/bike_mechanic.dart';
import 'package:godhra_community/pages/Contacts/contacts/car_mechanic.dart';
import 'package:godhra_community/pages/Contacts/contacts/community_head.dart';
import 'package:godhra_community/pages/Contacts/contacts/computer_fixer.dart';
import 'package:godhra_community/pages/Contacts/contacts/house_broker.dart';
import 'package:godhra_community/pages/Contacts/contacts/house_painter.dart';

import 'contacts/IT.dart';
import 'contacts/electrician.dart';
import 'contacts/ghusal(janaza).dart';
import 'contacts/plumber.dart';
import 'contacts/riksha.dart';
// import 'package:flutter/rendering.dart';

class ContactsPage extends StatefulWidget {
  @override
  State<ContactsPage> createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  List<Color> colors = [
    Color.fromARGB(255, 121, 120, 120),
    Colors.blueAccent,
    Colors.orange,
    Colors.red,
    Color.fromARGB(255, 147, 204, 216),
    Colors.grey,
    Color.fromARGB(255, 250, 197, 119),
    Color.fromARGB(255, 150, 109, 94),
    Colors.red,
    Color.fromARGB(255, 255, 121, 113),
    Colors.orange,
  ];
  List<String> values = [
    'Community Head',
    'House Broker',
    'House Painter',
    'Bike Mechanic',
    'Car Mechanic',
    'Computer Fixer',
    'Plumber',
    'Electrician',
    'Ghusal(Janaza)',
    'Riksha/Taxi',
    'IT'
  ];

  List<String> imageLists = [
    'assets/images/iv_contact_community_head.png',
    'assets/images/iv_contact_house_broker.png',
    'assets/images/iv_contact_house_painter.png',
    'assets/images/iv_contact_bike_mechenic.png',
    'assets/images/iv_contact_car_mechenic.png',
    'assets/images/iv_contact_computer_fixer.png',
    'assets/images/iv_contact_plumber.png',
    'assets/images/iv_contact_electrician.png',
    'assets/images/janaza.png',
    'assets/images/pngwing.com.png',
    'assets/images/laptop.png',
  ];

  final List<Widget> screens = [
    const CommunityHead(),
    const HouseBroker(),
    const HousePainter(),
    const BikeMechanic(),
    const CarMechanic(),
    const ComputerFixer(),
    const Plumber(),
    const Electrician(),
    const GhusalJanaza(),
    const RikshaTaxi(),
    const IT()
    // Add more screens here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset('assets/images/icn_back_black.png'),
          ),
          centerTitle: true,
          title: AppBarTitle(),
        ),
        body: Column(
          children: [
            directoryText(),
            contactGridView(),
          ],
        ));
  }

  Widget directoryText() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Number Directory',
            style: TextStyle(fontSize: 15, fontFamily: 'Ubuntu'),
          ),
        ],
      ),
    );
  }

  Widget contactGridView() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: GridView.builder(
          padding: const EdgeInsets.symmetric(vertical: 10),
          itemCount: values.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 3,
            mainAxisSpacing: 5,
          ),
          itemBuilder: (BuildContext context, int index) {
            return contactCard(index);
          },
        ),
      ),
    );
  }

  Widget contactCard(
    int index,
  ) {
    return InkWell(
      onTap: () {
        if (index < screens.length) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => screens[index]),
          );
        }
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Card(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Image.asset(
                      imageLists[index],
                      height: 60,
                      width: 60,
                    ),
                    Text(
                      values[index],
                      style: const TextStyle(
                          fontFamily: 'Ubuntu',
                          fontSize: 12,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Column(children: [
                  Container(
                    width: 80,
                    height: 2,
                    color: colors[index % colors.length],
                  )
                ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
