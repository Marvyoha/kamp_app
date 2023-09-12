import 'package:flutter/material.dart';

class GlobalVariables {
  static sizeHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static sizeWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static introPadding(BuildContext context) {
    return const EdgeInsets.fromLTRB(10, 80, 10, 30);
  }

  static formPadding(BuildContext context) {
    return const EdgeInsets.fromLTRB(10, 60, 10, 30);
  }

  static mediumButtonPadding(BuildContext context) {
    return const EdgeInsets.all(5);
  }

  static smallButtonPadding(BuildContext context) {
    return const EdgeInsets.all(2);
  }

  static EdgeInsets mainScreenPadding(BuildContext context) {
    return const EdgeInsets.only(
      left: 15,
      right: 15,
      top: 6,
      bottom: 10,
    );
  }

  static const spacing = SizedBox(height: 20);
}
