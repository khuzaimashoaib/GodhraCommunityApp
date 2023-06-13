import 'package:flutter/material.dart';
import 'package:godhra_community/colors/color_constant.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
            top: BorderSide(
          width: 1,
          color: Colors.grey,
        )),
      ),
      child: Card(
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              txtAndImage(),
              cardDivider(),
              phoneCall(),
            ],
          ),
        ),
      ),
    );
  }

  Widget txtAndImage() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name",
                style: TextStyle(
                  color: ColorConstant.color,
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                )),
            SizedBox(height: 5),
            Text(
              "Number",
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 5,
            ),
            Text("Area :", style: TextStyle(color: ColorConstant.color)),
          ],
        ),
        Image.asset(
          'assets/images/img_copy_to_clip.png',
          height: 50,
        ),
      ],
    );
  }

  Widget cardDivider() {
    return Divider(
      color: Colors.grey,
    );
  }

  Widget phoneCall() {
    return Column(
      children: [
        Row(children: [
          Image.asset(
            'assets/images/icn_call_icon.png',
          ),
          Text('03xxxxxxxxx')
        ]),
        ElevatedButton(
            onPressed: () {},
            child: Container(
              child: Text('Call'),
            ))
      ],
    );
  }
}
