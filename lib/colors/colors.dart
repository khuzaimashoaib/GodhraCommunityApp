import 'package:flutter/material.dart';

const MaterialColor primary = MaterialColor(_primaryPrimaryValue, <int, Color>{
  50: Color(0xFFE6F3F6),
  100: Color(0xFFC0E1E8),
  200: Color(0xFF96CED9),
  300: Color(0xFF6CBAC9),
  400: Color(0xFF4DABBE),
  500: Color(_primaryPrimaryValue),
  600: Color(0xFF2894AB),
  700: Color(0xFF228AA2),
  800: Color(0xFF1C8099),
  900: Color(0xFF116E8A),
});
const int _primaryPrimaryValue = 0xFF2D9CB2;

const MaterialColor primaryAccent =
    MaterialColor(_primaryAccentValue, <int, Color>{
  100: Color(0xFFBCEEFF),
  200: Color(_primaryAccentValue),
  400: Color(0xFF56D5FF),
  700: Color(0xFF3CCFFF),
});
const int _primaryAccentValue = 0xFF89E2FF;
