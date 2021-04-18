import 'package:desafio_covid/app/shared/models/country.dart';
import 'package:desafio_covid/app/shared/widgets/row_cases_rates.dart';
import 'package:desafio_covid/app/shared/widgets/text_labeled_value.dart';
import 'package:desafio_covid/app/shared/widgets/text_title.dart';
import 'package:flutter/material.dart';

class CountryDetails extends StatelessWidget {
  const CountryDetails({
    Key key,
    @required this.country,
  }) : super(key: key);

  final Country country;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedOverflowBox(
        size: Size(325.0, 360.0),
        child: Container(
          width: 325.0,
          height: 380.0,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // TODO: fazer imagem dar um overflow no container
                  // talvez usar o container dentro de uma sized box
                  // talvez usar Stack( clipBehavior: Clip.none) e
                  // posicionar uma coluna com MainAxisAlignment.start
                  Image.network(
                    country.flagLink,
                    width: 210.0,
                    height: 140.0,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TitleText(
                    text: country.name,
                    fontSize: 20.0,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LabeledValueText(
                    labelText: 'Total de casos',
                    valueText: country.totalCases.toString(),
                  )
                ],
              ),
              CasesRatesRow(country: country),
            ],
          ),
        ),
      ),
    );
  }
}
