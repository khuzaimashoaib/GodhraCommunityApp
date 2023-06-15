import 'package:flutter/material.dart';

class TvContainer extends StatefulWidget {
  const TvContainer({super.key});

  @override
  State<TvContainer> createState() => _TvContainerState();
}

class _TvContainerState extends State<TvContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Container(
            height: 100,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: Theme.of(context).colorScheme.primary,
              elevation: 1,
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
                        Icon(
                          Icons.tv,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Title :',
                          style: TextStyle(
                            fontFamily: 'Ubuntu',
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Box(0, 5),
                    Text(
                      'Country:',
                      style: TextStyle(
                        fontFamily: 'Ubuntu',
                      ),
                    ),
                    Box(0, 5),
                    Text(
                      'Language:',
                      style: TextStyle(
                        fontFamily: 'Ubuntu',
                      ),
                    ),
                  ],
                ),
              ),
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
