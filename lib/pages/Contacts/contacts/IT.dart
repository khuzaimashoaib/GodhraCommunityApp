import 'package:flutter/material.dart';
import 'package:godhra_community/components/searchBar.dart';

class IT extends StatefulWidget {
  const IT({super.key});

  @override
  State<IT> createState() => _ITState();
}

class _ITState extends State<IT> {
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