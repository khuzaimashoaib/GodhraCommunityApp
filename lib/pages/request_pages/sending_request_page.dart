import 'package:flutter/material.dart';
import 'package:godhra_community/colors/color_constant.dart';
import 'package:godhra_community/components/appBar.dart';
import 'package:godhra_community/pages/drawer_pages/profile_screen.dart';

class SendingRequestPage extends StatefulWidget {
  const SendingRequestPage({super.key});

  @override
  State<SendingRequestPage> createState() => _SendingRequestPageState();
}

class _SendingRequestPageState extends State<SendingRequestPage> {
  double? _deviceHeight, _deviceWidth;

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    TextEditingController _title = TextEditingController();
    TextEditingController _message = TextEditingController();

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
        title: AppBarTitle(color: ColorConstant.color),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(35, 20, 35, 0),
          child: Center(
            child: Column(
              children: [
                sendRequesttxt(),
                SizedBox(height: 20),
                titleTextWidget(
                  text1: 'Title',
                  text2: 'Enter Title',
                  ControLLer: _title,
                  // minLines: 1,
                ),
                titleTextWidget(
                    text1: 'Message',
                    text2: 'Enter Message',
                    ControLLer: _message,
                    minLines: 7),
                SizedBox(height: 10),
                imageWidget(),
                SizedBox(height: 20),
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
    Color color = const Color.fromARGB(255, 25, 148, 172);
    Color colour = Color.fromRGBO(248, 248, 248, 0.397);
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
          cursorColor: color,
          style: TextStyle(color: ColorConstant.color, fontFamily: 'Ubuntu'),
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
            child: Image(
              image: AssetImage('assets/images/add_img.png'),
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
        height: _deviceHeight! * 0.055,
        width: _deviceWidth! * 0.7,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: ColorConstant.color),
        child: Center(
          child: Text(
            'Send',
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
