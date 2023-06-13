import 'package:flutter/material.dart';
import 'package:godhra_community/components/searchBar.dart';

class GhusalJanaza extends StatefulWidget {
  const GhusalJanaza({super.key});

  @override
  State<GhusalJanaza> createState() => _GhusalJanazaState();
}

class _GhusalJanazaState extends State<GhusalJanaza> {
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