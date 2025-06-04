import 'package:flutter/material.dart';

class ResponsiveUltils {
  final double _mockupWidth = 360;
  final double _mockupHeight = 803;

  double getTextScale(BuildContext context) {
    final double phoneWidth = MediaQuery.of(context).size.width;
    return phoneWidth / _mockupWidth;
  }

  double getImageScale(BuildContext context) {
    final double phoneWidth = MediaQuery.of(context).size.width;
    return _mockupWidth / phoneWidth;
  }

  double getHeightSpacing(BuildContext context, double heightSpacing) {
    final double phoneHeight = MediaQuery.of(context).size.height;
    return heightSpacing / _mockupHeight * phoneHeight;
  }

  double getWidthSpacing(BuildContext context, double widthSpacing) {
    final double phoneWidth = MediaQuery.of(context).size.width;
    return widthSpacing / _mockupWidth * phoneWidth;
  }
}
