import 'package:flutter/material.dart';
import 'package:godhra_community/colors/color_constant.dart';
import 'package:godhra_community/components/appBar.dart';
import 'package:godhra_community/components/request/reqest_container.dart';
import 'package:godhra_community/indicator/circularIndicator.dart';
import 'package:godhra_community/pages/request_pages/sending_request_page.dart';

class RequestPage extends StatefulWidget {
  const RequestPage({super.key});

  @override
  State<RequestPage> createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
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
        backgroundColor: colorBg,
        leading: IconButton(
          icon: Image.asset('assets/images/icn_back_black.png'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: AppBarTitle(color: ColorConstant.color),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 16, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Requests',
                style: TextStyle(
                    fontWeight: FontWeight.normal, fontFamily: 'Ubuntu'),
              ),
              SizedBox(height: 10.0),
              Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return RequestContainer();
                    }),
              ),
            ],
          ),
        ),
      ),

      // FutureBuilder(
      //   future: _future,
      //   builder: (context, snapshot) {
      //     if (snapshot.connectionState == ConnectionState.done) {
      //       if (snapshot.hasData) {
      //         _showAlertDialog = true;
      //       }
      //       return ListView.builder(
      //         itemCount: 10, // Replace with your actual data count
      //         itemBuilder: (context, index) {
      //           return ListTile(
      //             title: Text('khuzaima'),
      //           );
      //         },
      //       );
      //     } else {
      //       return Center(
      //         child: Indicator(),
      //       );
      //     }
      //   },
      // ),
      // if (_showAlertDialog)
      //   AlertDialog(
      //     content: Text('No request found'),
      //     actions: [
      //       TextButton(
      //         onPressed: () {
      //           Navigator.pop(context);
      //         },
      //         child: Text('OK'),
      //       )
      //     ],
      //   ),
      // FutureBuilder(
      //   builder: (context, snapshot) {
      //     if (snapshot.connectionState == ConnectionState.done) {
      //       return ListView.builder(
      //         itemCount: 10, // Replace with your actual data count
      //         itemBuilder: (context, index) {
      //           return ListTile(
      //             title: Text('khuzaima'),
      //           );
      //         },
      //       );
      //     } else {
      //       WidgetsBinding.instance!.addPostFrameCallback((_) {
      //         showDialog(
      //           context: context,
      //           // barrierDismissible: true,
      //           builder: (BuildContext context) {
      //             return Center(
      //               child: Indicator(),
      //             );
      //           },
      //         );
      //       });
      //     }
      //     return Center(
      //       child: AlertDialog(
      //         content: Text('No request found'),
      //         actions: [
      //           TextButton(
      //             onPressed: () {
      //               Navigator.pop(context);
      //             },
      //             child: Text('OK'),
      //           )
      //         ],
      //       ),
      //     );
      //   },
      // ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SendingRequestPage()),
          );
        },
        child: Image.asset(
          'assets/images/img_request_icon.png',
          height: 30,
        ),
      ),
    );
  }
}
