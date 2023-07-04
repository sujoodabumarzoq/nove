import 'package:flutter/material.dart';
class SizeConfig {
  static double?screenWidth;
  static double? _screenHeight;
  static double blockWidth = 0;
  static double blockHeight
  = 0;
  static double? textMultiplier;
  static double? imageSizeMultiplier;
  static double? heightMultiplier;
  static double? widthMultiplier;
  static double? deviceRatio;
  static bool isPortrait = true;
  static bool isMobilePortrait = false;
  static MediaQueryData? _mediaQueryData;


  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    _screenHeight = _mediaQueryData!.size.height;
    blockWidth = screenWidth! / 100;
    blockHeight = _screenHeight! / 100;
    textMultiplier = blockHeight;
    imageSizeMultiplier = blockWidth;
    heightMultiplier = blockHeight;
    widthMultiplier = blockWidth;
    deviceRatio = screenWidth! / _screenHeight!;
  }

  static double scaleTextFont(double fontSize) {
    double scale = fontSize / 8.96;
    return (textMultiplier! * scale);
  }

  static double scaleWidth(double width) {
    double scale = width / 3.75;

    return (widthMultiplier! * scale);
  }

  static double scaleHeight(double height) {
    double scale = height / 8.12;

    return (heightMultiplier! * scale);
  }
}