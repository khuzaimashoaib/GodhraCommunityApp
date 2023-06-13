import 'package:flutter/material.dart';
import 'package:godhra_community/colors/color_constant.dart';

class DiscussionSendingRequestPage extends StatefulWidget {
  const DiscussionSendingRequestPage({super.key});

  @override
  State<DiscussionSendingRequestPage> createState() =>
      _DiscussionSendingRequestPageState();
}

class _DiscussionSendingRequestPageState
    extends State<DiscussionSendingRequestPage> {
  double? _deviceHeight, _deviceWidth;

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    TextEditingController message = TextEditingController();

    // Color colorBg = MediaQuery.of(context).platformBrightness == Brightness.dark
    //     ? Colors.grey.shade900
    //     : Colors.white;
    return Scaffold(
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
          style: TextStyle(color: Color.fromARGB(255, 16, 204, 201)),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(35, 20, 35, 0),
          child: Center(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Create Discussion',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Ubuntu'),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                titleTextWidget(
                    text1: 'Discussion Text',
                    text2: 'Enter Discussion Text',
                    ControLLer: message,
                    minLines: 7),
                const SizedBox(height: 10),
                imageWidget(),
                const SizedBox(height: 20),
                sendButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget sendRequesttxt() {
    return Row(
      children: [
        Text(
          'Send Request',
          style: TextStyle(fontFamily: 'Ubuntu', fontWeight: FontWeight.w400),
        ),
      ],
    );
  }

  Widget titleTextWidget({
    required String text1,
    required String text2,
    required TextEditingController ControLLer,
    VoidCallback? ontap,
    bool? showCursor,
    int? minLines,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5, bottom: 5, right: 5),
          child: Text(
            text1,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
              fontFamily: 'Ubuntu',
            ),
          ),
        ),
        TextField(
          minLines: minLines,
          maxLines: null,
          showCursor: showCursor,
          onTap: ontap,
          cursorColor: ColorConstant.color,
          style: TextStyle(color: Colors.black, fontFamily: 'Ubuntu'),
          controller: ControLLer,
          decoration: InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.fromLTRB(10, 10, 0, 10),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                color: Colors.grey.shade600,
              ),
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(
                  color: Colors.grey.shade600,
                )),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(
                  color: Colors.grey.shade600,
                )),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(
                  color: Colors.grey.shade600,
                )),
            hintText: text2,
            hintStyle: TextStyle(
              fontFamily: 'Ubuntu',
              color: Colors.grey[600],
              fontSize: 16,
            ),
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }

  Widget imageWidget() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
          child: GestureDetector(
            onTap: (() {}),
            child: Image(
              image: AssetImage(
                'assets/images/add_img.png',
              ),
              height: 55,
              width: 55,
            ),
          ),
        ),
      ],
    );
  }

  Widget sendButton() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        // margin: EdgeInsets.only(left: 20),
        height: _deviceHeight! * 0.060,
        width: _deviceWidth! * 0.7,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: ColorConstant.color),
        child: Center(
          child: Text(
            'Create Discussion',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Ubuntu',
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
