import 'package:flutter/material.dart';

class RequestContainer extends StatefulWidget {
  const RequestContainer({super.key});

  @override
  State<RequestContainer> createState() => _RequestContainerState();
}

class _RequestContainerState extends State<RequestContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border(top: BorderSide(color: Colors.grey.shade500)),
            color: Theme.of(context).colorScheme.primary,
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
                            color: Theme.of(context).colorScheme.secondary),
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
                  ),
                ),
                Box(0, 5),
                Text(
                  'From :',
                  style: TextStyle(
                    fontFamily: 'Ubuntu',
                  ),
                ),
                Box(0, 5),
                Text(
                  'To :',
                  style: TextStyle(
                    fontFamily: 'Ubuntu',
                  ),
                ),
                Box(0, 5),
                Text(
                  'Message : jhgdsjhgsjfgasjgfuagd jhasdgfkashdf  ggfjhsdfhgdhjh  jhdbhds dgf dfg jag fshdgf sdaf ad',
                  style: TextStyle(
                    fontFamily: 'Ubuntu',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: Divider(
                    thickness: 1,
                    color: Colors.grey.shade500,
                  ),
                ),
              ],
            ),
          ),
        ),
        Box(0, 10)
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
