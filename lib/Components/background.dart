import 'package:april26/const/color.dart';
import 'package:flutter/material.dart';

class BackgroundVertikal {
  LinearGradient buildBackgroundGradient() {
    return LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [CustomColors.Bg1, Colors.white],
      stops: [0.35, 0.35],
      transform: GradientRotation(10 * 3.1415926535 / 180),
    );
  }
}

class BackgroundHorizontal {
  LinearGradient buildBackgroundGradient() {
    return LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [CustomColors.Bg1, Colors.white],
      stops: [0.3, 0.3],
      transform: GradientRotation(85 * 3.1415926535 / 180), 
    );
  }
}
