import 'package:desafio_covid/app/shared/models/country.dart';
import 'package:desafio_covid/app/shared/widgets/boxdecoration_white_with_shadow.dart';
import 'package:flutter/material.dart';

class CountryFlagContainer extends StatelessWidget {
  const CountryFlagContainer({
    Key key,
    @required this.country,
  }) : super(key: key);

  final Country country;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: WhiteBoxDecorationWithShadow.buildBoxDecoration(),
      child: Container(
        width: 210,
        height: 140,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(4.0),
          ),
          image: DecorationImage(
            image: NetworkImage(
              country.flagLink,
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
