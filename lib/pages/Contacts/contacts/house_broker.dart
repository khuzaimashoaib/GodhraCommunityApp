import 'package:flutter/material.dart';
import 'package:godhra_community/components/searchBar.dart';

class HouseBroker extends StatefulWidget {
  const HouseBroker({super.key});

  @override
  State<HouseBroker> createState() => _HouseBrokerState();
}

class _HouseBrokerState extends State<HouseBroker> {
    final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('assets/images/icn_back_black.png'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: SearchBar(
          searchController: searchController,
        ),
      ),
    );
  }
}
