import 'package:flutter/material.dart';
import 'package:godhra_community/components/searchBar.dart';

class Electrician extends StatefulWidget {
  const Electrician({super.key});

  @override
  State<Electrician> createState() => _ElectricianState();
}

class _ElectricianState extends State<Electrician> {
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