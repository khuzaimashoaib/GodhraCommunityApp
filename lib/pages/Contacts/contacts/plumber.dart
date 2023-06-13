import 'package:flutter/material.dart';
import 'package:godhra_community/components/searchBar.dart';

class Plumber extends StatefulWidget {
  const Plumber({super.key});

  @override
  State<Plumber> createState() => _PlumberState();
}

class _PlumberState extends State<Plumber> {
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
