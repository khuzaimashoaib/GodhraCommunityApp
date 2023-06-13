import 'package:flutter/material.dart';
import 'package:godhra_community/components/searchBar.dart';

class BikeMechanic extends StatefulWidget {
  const BikeMechanic({super.key});

  @override
  State<BikeMechanic> createState() => _BikeMechanicState();
}

class _BikeMechanicState extends State<BikeMechanic> {

  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
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
      ),);
    
  }
}