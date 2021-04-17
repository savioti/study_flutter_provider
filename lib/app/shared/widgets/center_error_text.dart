import 'package:flutter/material.dart';

class CenterErrorText extends StatelessWidget {
  const CenterErrorText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 345.0,
        height: 55.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(4.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0x1000000D),
              offset: Offset(0.0, 4.0),
              // spreadRadius: 3.0,
              blurRadius: 6.0,
            ),
          ],
        ),
        child: Center(
          child: Text(
            'Erro: nenhum continente selecionado',
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
