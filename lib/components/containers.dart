import 'package:flutter/material.dart';
import 'package:godhra_community/colors/gradient.dart';

class Containers extends StatelessWidget {
  LinearGradient? color;
  String name;
  String? imagePath;
  TextStyle? textStyle;

  Containers({
    this.textStyle,
    required this.imagePath,
    required this.name,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: color,
          ),
          width: 60,
          height: 60,
          child: Center(
            child: Image.asset(
              imagePath!,
              height: 50,
              width: 50,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: textStyle,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
