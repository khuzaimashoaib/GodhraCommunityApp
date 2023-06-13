import 'package:flutter/material.dart';
import 'package:godhra_community/colors/color_constant.dart';

class AppBarTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
          text: 'GODHRA ',
          style: TextStyle(
            fontFamily: 'Ubuntu',
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: ColorConstant.color,
          )),
      TextSpan(
        text: 'COMMUNITY',
        style: TextStyle(
            fontFamily: 'Ubuntu',
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: ColorConstant.color),
      )
    ]));
  }
}
