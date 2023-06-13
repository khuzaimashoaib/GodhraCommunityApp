import 'package:flutter/material.dart';
import 'package:godhra_community/components/searchBar.dart';

class CarMechanic extends StatefulWidget {
  const CarMechanic({super.key});

  @override
  State<CarMechanic> createState() => _CarMechanicState();
}

class _CarMechanicState extends State<CarMechanic> {
 
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