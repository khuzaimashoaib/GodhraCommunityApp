import 'package:flutter/material.dart';
import 'package:godhra_community/colors/color_constant.dart';

class ClinicContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              top: BorderSide(
                color: Color.fromARGB(255, 161, 157, 157),
                width: 1.0,
              ),
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Aqsa Clinic ',
                        style: TextStyle(
                            fontFamily: 'Ubuntu',
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            color: Colors.black),
                        // softWrap: true,
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        'Area :',
                        style: TextStyle(
                            fontFamily: 'Ubuntu',
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                            color: ColorConstant.color),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        'Location : fdsfdfgsdfgsdfsfdsfdsdfsdsdfsdfsdfsfeffdwada',
                        style: TextStyle(
                            fontFamily: 'Ubuntu', color: ColorConstant.color),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset('assets/images/img_location_btn.png',
                    height: 50),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
