import 'package:desafio_covid/app/shared/models/continent.dart';
import 'package:desafio_covid/app/shared/widgets/boxdecoration_white_with_shadow.dart';
import 'package:desafio_covid/app/shared/widgets/list_tile_continent.dart';
import 'package:flutter/material.dart';

class ContinentButton extends StatelessWidget {
  const ContinentButton({Key key, @required this.continent}) : super(key: key);

  final Continent continent;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 345.0,
      child: Container(
        decoration: WhiteBoxDecorationWithShadow.buildBoxDecoration(),
        // TODO: extrair widget
        child: ElevatedButton(
          style: ButtonStyle(
            shadowColor: MaterialStateProperty.all(
              Color(0x0000000D),
            ),
            backgroundColor: MaterialStateProperty.all(Colors.white),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(4.0),
                ),
              ),
            ),
            elevation: MaterialStateProperty.all(0.0),
          ),
          onPressed: () => {
            Navigator.pushNamed(context, '/continent_overview',
                arguments: continent),
          },
          child: ContinentListTile(continent: continent),
        ),
      ),
    );
  }
}
