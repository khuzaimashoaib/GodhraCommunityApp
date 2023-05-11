import 'package:flutter/material.dart';
import 'package:godhra_community/components/onlineTV/TvContainer.dart';

class OnlineTV extends StatefulWidget {
  const OnlineTV({super.key});

  @override
  State<OnlineTV> createState() => _OnlineTVState();
}

class _OnlineTVState extends State<OnlineTV> {
  @override
  Widget build(BuildContext context) {
    Color colorBg = MediaQuery.of(context).platformBrightness == Brightness.dark
        ? Colors.grey.shade900
        : Colors.white;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorBg,
        leading: IconButton(
          icon: Image.asset('assets/images/icn_back_black.png'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 16, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Channel List',
                style: TextStyle(
                    fontWeight: FontWeight.normal, fontFamily: 'Ubuntu'),
              ),
              SizedBox(height: 10.0),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      TvContainer(),
                      TvContainer(),
                      TvContainer(),
                      TvContainer(),
                      TvContainer(),
                      TvContainer(),
                      TvContainer(),
                      TvContainer(),
                      TvContainer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
