import 'package:flutter/material.dart';

class LabeledValueText extends StatelessWidget {
  const LabeledValueText({
    Key key,
    @required this.labelText,
    @required this.valueText,
    this.valueFontColor = const Color(0xFF1E2243),
    this.valueFontSize = 16.0,
    this.valueFontWeight = FontWeight.normal,
    this.containerHeight = 41.0,
  }) : super(key: key);

  final String labelText;
  final String valueText;
  final Color valueFontColor;
  final double valueFontSize;
  final FontWeight valueFontWeight;
  final double containerHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: containerHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            labelText,
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontSize: 16.0,
              color: Color(0xFF969AA8),
            ),
          ),
          Text(
            valueText,
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontSize: valueFontSize,
              fontWeight: valueFontWeight,
              color: valueFontColor,
            ),
          ),
        ],
      ),
    );
  }
}
