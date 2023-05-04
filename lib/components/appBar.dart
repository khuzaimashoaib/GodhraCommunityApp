import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  AppBarTitle({required this.color});
  Color color;
  @override
  Widget build(BuildContext context) {
    color = const Color.fromARGB(255, 45, 156, 178);
    return RichText(
        text: TextSpan(children: [
      TextSpan(
          text: 'GODHRA ',
          style: TextStyle(
            fontFamily: 'Ubuntu',
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: color,
          )),
      TextSpan(
        text: 'COMMUNITY',
        style: TextStyle(
            fontFamily: 'Ubuntu',
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: color),
      )
    ]));
  }
}
