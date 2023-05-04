import 'package:flutter/material.dart';

LinearGradient myGradient(Color startColor, Color endColor) {
  return LinearGradient(
    colors: [startColor, endColor],
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
  );
}

  LinearGradient maleFemaleGradient(Color startColor, Color endColor) {
  return LinearGradient(
    colors: [startColor, endColor],
    begin: Alignment.bottomLeft,
    end: Alignment.bottomRight,
  );
}

