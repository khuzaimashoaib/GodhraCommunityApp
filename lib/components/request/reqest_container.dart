import 'package:flutter/material.dart';

class RequestContainer extends StatelessWidget {
  const RequestContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 170,
          decoration: BoxDecoration(
            border: Border(top: BorderSide(color: Colors.grey.shade500)),
            color: Colors.white,
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                      child: Text(
                        '746527678326548732458723',
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Ubuntu',
                            color: Colors.grey.shade400),
                      ),
                    ),
                  ],
                ),
                Text(
                  'Title :',
                  style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black),
                ),
                Box(0, 5),
                Text(
                  'From :',
                  style: TextStyle(fontFamily: 'Ubuntu', color: Colors.black),
                ),
                Box(0, 5),
                Text(
                  'To :',
                  style: TextStyle(fontFamily: 'Ubuntu', color: Colors.black),
                ),
                Box(0, 5),
                Text(
                  'Message :',
                  style: TextStyle(fontFamily: 'Ubuntu', color: Colors.black),
                ),
                Divider(
                  thickness: 1,
                  color: Colors.grey.shade500,
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 10),
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
