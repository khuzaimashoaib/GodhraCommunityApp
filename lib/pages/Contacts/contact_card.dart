import 'package:flutter/material.dart';
import 'package:godhra_community/colors/color_constant.dart';
import 'package:godhra_community/colors/gradient.dart';

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
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
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
            const SizedBox(height: 5),
            Text(
              "Joint Secretary",
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 5,
            ),
            Text("Area :", style: TextStyle(color: ColorConstant.color)),
          ],
        ),
        Container(
          padding: const EdgeInsets.only(top: 10, right: 10),
          child: Image.asset(
            'assets/images/img_copy_to_clip.png',
            height: 50,
          ),
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
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(children: [
          Image.asset(
            'assets/images/icn_call_icon.png',
            scale: 1,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            '0321xxxxxxx',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          )
        ]),
        Row(
          children: [
            GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                  gradient: maleFemaleGradient(
                    Color.fromARGB(255, 68, 213, 241),
                    Color.fromARGB(255, 25, 148, 172),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                width: 100,
                height: 30,
                alignment: Alignment.center,
                child: const Text(
                  'Call',
                  style: TextStyle(
                      fontSize: 16, fontFamily: 'Ubuntu', color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
