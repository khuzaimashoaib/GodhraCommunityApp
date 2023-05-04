import 'package:flutter/material.dart';
import 'package:godhra_community/colors/color_constant.dart';


Widget imageProfile() {
  return Stack(
    children: [
      CircleAvatar(
          radius: 50,
          backgroundColor: Colors.blueGrey[50],
          child: Icon(
            Icons.person_2,
            color: ColorConstant.greyColor,
            size: 92,
          )),
      Positioned(
          left: 60,
          bottom: 55,
          child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_circle_up_sharp,
                color: Color.fromARGB(255, 25, 148, 172),
                size: 35,
              )))
],
);
}