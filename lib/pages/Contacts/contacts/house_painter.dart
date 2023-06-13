import 'package:flutter/material.dart';
import 'package:godhra_community/components/searchBar.dart';

class HousePainter extends StatefulWidget {
  const HousePainter({super.key});

  @override
  State<HousePainter> createState() => _HousePainterState();
}

class _HousePainterState extends State<HousePainter> {
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