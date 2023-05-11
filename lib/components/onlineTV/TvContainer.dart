import 'package:flutter/material.dart';

class TvContainer extends StatelessWidget {
  const TvContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(Icons.tv, color: Colors.black),
                    SizedBox(width: 10),
                    Text(
                      'Title :',
                      style: TextStyle(
                          fontFamily: 'Ubuntu',
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black),
                    ),
                  ],
                ),
                Box(0, 5),
                Text(
                  'Country:',
                  style: TextStyle(fontFamily: 'Ubuntu', color: Colors.black),
                ),
                Box(0, 5),
                Text(
                  'Language:',
                  style: TextStyle(fontFamily: 'Ubuntu', color: Colors.black),
                ),
              ],
            ),
          ),
        ),
        Divider(
          thickness: 1,
          color: Colors.grey.shade500,
        ),
      ],
    );
  }

  Widget Box(double width, double height) {
    return SizedBox(
      width: width,
      height: height,
    );
  }
}
