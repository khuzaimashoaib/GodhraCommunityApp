import 'package:flutter/material.dart';
import 'package:godhra_community/components/searchBar.dart';

class ComputerFixer extends StatefulWidget {
  const ComputerFixer({super.key});

  @override
  State<ComputerFixer> createState() => _ComputerFixerState();
}

class _ComputerFixerState extends State<ComputerFixer> {
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