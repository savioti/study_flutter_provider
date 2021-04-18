import 'package:flutter/material.dart';

class WhiteBoxDecorationWithShadow {
  static BoxDecoration buildBoxDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(4.0),
      ),
      boxShadow: [
        BoxShadow(
          color: Color(0x1000000D),
          offset: Offset(0.0, 4.0),
          blurRadius: 6.0,
        ),
      ],
    );
  }
}
