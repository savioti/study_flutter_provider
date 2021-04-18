import 'package:desafio_covid/app/shared/widgets/boxdecoration_white_with_shadow.dart';
import 'package:flutter/material.dart';

class CenterErrorText extends StatelessWidget {
  const CenterErrorText({
    Key key,
    @required this.errorMessage,
  }) : super(key: key);

  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 345.0,
        height: 55.0,
        decoration: WhiteBoxDecorationWithShadow.buildBoxDecoration(),
        child: Center(
          child: Text(
            errorMessage,
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontSize: 16.0,
              color: Color(0xFF1E2243),
            ),
          ),
        ),
      ),
    );
  }
}
