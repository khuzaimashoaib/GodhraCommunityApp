import 'package:flutter/material.dart';
import 'package:godhra_community/colors/color_constant.dart';

class SearchBar extends StatelessWidget {
  final TextEditingController searchController;

  SearchBar({required this.searchController});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 250,
      decoration: BoxDecoration(
        border: Border.all(
            width: 1.5, color: Theme.of(context).colorScheme.secondary),
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(20),
      ),
      child: searchBar(),
    );
    ;
  }

  Widget searchBar() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2.0),
      child: TextField(
          controller: searchController,
          cursorColor: ColorConstant.color,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Search ...',
            hintStyle: TextStyle(fontSize: 14),
            prefixIcon: Image.asset(
              'assets/images/icn_search_black.png',
              scale: 2,
            ),
          )),
    );
  }
}
