import 'package:desafio_covid/app/shared/models/country.dart';
import 'package:desafio_covid/app/shared/widgets/boxdecoration_white_with_shadow.dart';
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
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: 325.0,
            height: 325.0,
            color: Colors.white,
          ),
          Positioned(
            bottom: 20.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 210.0,
                  width: 325.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
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
              ],
            ),
          ),
          Positioned(
            bottom: 235,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
