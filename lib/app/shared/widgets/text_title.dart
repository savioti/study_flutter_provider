import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    Key key,
    @required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Ubuntu',
        fontWeight: FontWeight.bold,
        fontSize: 16.0,
        color: Color(0xFF1E2243),
      ),
    );
  }
}
