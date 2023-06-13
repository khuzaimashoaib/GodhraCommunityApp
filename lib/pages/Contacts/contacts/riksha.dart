import 'package:flutter/material.dart';
import 'package:godhra_community/components/searchBar.dart';

class RikshaTaxi extends StatefulWidget {
  const RikshaTaxi({super.key});

  @override
  State<RikshaTaxi> createState() => _RikshaTaxiState();
}

class _RikshaTaxiState extends State<RikshaTaxi> {
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