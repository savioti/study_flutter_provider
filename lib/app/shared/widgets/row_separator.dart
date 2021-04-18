import 'package:flutter/material.dart';

class SeparatorRow extends StatelessWidget {
  const SeparatorRow({
    Key key,
    this.width = 300.0,
    this.height = 25.0,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: width,
          height: height,
        )
      ],
    );
  }
}
