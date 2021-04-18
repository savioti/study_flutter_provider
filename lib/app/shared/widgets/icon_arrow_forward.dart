import 'package:flutter/material.dart';

class ArrowForwardIcon extends StatelessWidget {
  const ArrowForwardIcon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.arrow_forward_ios,
      size: 16,
      color: Color(0xFFCCCCCC),
    );
  }
}
