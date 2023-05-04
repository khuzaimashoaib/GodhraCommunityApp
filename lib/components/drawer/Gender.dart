import 'package:flutter/material.dart';
import 'package:godhra_community/colors/gradient.dart';

class GenderSelector extends StatefulWidget {
  @override
  _GenderSelectorState createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  bool _isMaleSelected = true;
  bool _isFemaleSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          maleBtn(),
          SizedBox(width: 5),
          femaleBtn(),
        ],
      ),
    );
  }

  Widget maleBtn() {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isMaleSelected = true;
          _isFemaleSelected = false;
        });
      },
      child: Container(
        height: 40.0,
        width: 150,
        decoration: BoxDecoration(
          gradient: _isMaleSelected
              ? maleFemaleGradient(
                  Color.fromARGB(255, 25, 148, 172),
                  Color.fromARGB(255, 68, 213, 241),
                )
              : null,
          color: _isMaleSelected ? null : Colors.grey,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            'Male',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontSize: 18.0,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }

  Widget femaleBtn() {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isMaleSelected = false;
          _isFemaleSelected = true;
        });
      },
      child: Container(
        height: 40.0,
        width: 150,
        decoration: BoxDecoration(
          gradient: _isFemaleSelected
              ? maleFemaleGradient(Color.fromARGB(255, 25, 148, 172),
                  Color.fromARGB(255, 68, 213, 241))
              : null,
          color: _isFemaleSelected ? null : Colors.grey,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            'Female',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontSize: 18.0,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
