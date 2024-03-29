import 'package:flutter/material.dart';
import 'package:godhra_community/colors/color_constant.dart';
import 'package:godhra_community/pages/discussion/creating_discussion.dart';
import 'package:godhra_community/pages/discussion/discussionCard.dart';

class DiscussionPage extends StatefulWidget {
  const DiscussionPage({super.key});

  @override
  State<DiscussionPage> createState() => _DiscussionPageState();
}

class _DiscussionPageState extends State<DiscussionPage> {
  // bool _showProgressIndicator = true;
  // bool _showAlertDialog = false;
  // late Future _future;

  // Future fetchData() {
  //   return Future.delayed(const Duration(seconds: 2), () {});
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   _future = fetchData().whenComplete(() {
  //     if (!_showAlertDialog) {
  //       setState(() {
  //         _showProgressIndicator = false;
  //       });
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    Color colorBg = MediaQuery.of(context).platformBrightness == Brightness.dark
        ? Colors.grey.shade900
        : Colors.white;
    return Scaffold(
      // backgroundColor: ColorConstant.color,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Image.asset('assets/images/icn_back_black.png'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          'GODHRA COMMUNITY',
          style: TextStyle(
            color: Color.fromARGB(255, 16, 204, 201),
          ),
        ),
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 16, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Discussions',
                style: TextStyle(
                    fontWeight: FontWeight.normal, fontFamily: 'Ubuntu'),
              ),
              const SizedBox(height: 10.0),
              Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return DiscussionCard();
                    }),
              ),
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorConstant.color,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const DiscussionSendingRequestPage()),
          );
        },
        child: Image.asset(
          'assets/images/icn_edit.png',
          height: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}
