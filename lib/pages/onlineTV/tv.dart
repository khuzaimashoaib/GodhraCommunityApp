import 'package:flutter/material.dart';
import 'package:godhra_community/colors/color_constant.dart';
import 'package:godhra_community/components/onlineTV/TvContainer.dart';
import 'package:godhra_community/components/searchBar.dart';

class OnlineTV extends StatefulWidget {
  const OnlineTV({super.key});

  @override
  State<OnlineTV> createState() => _OnlineTVState();
}

class _OnlineTVState extends State<OnlineTV> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    dynamic colorBg =
        MediaQuery.of(context).platformBrightness == Brightness.dark
            ? ThemeData.dark()
            : ThemeData.light();
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'Channel List',
                  style: TextStyle(
                      fontWeight: FontWeight.normal, fontFamily: 'Ubuntu'),
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return TvContainer();
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
