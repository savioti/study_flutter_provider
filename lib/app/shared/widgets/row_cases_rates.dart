import 'package:desafio_covid/app/shared/models/country.dart';
import 'package:desafio_covid/app/shared/widgets/text_labeled_value.dart';
import 'package:flutter/material.dart';

class CasesRatesRow extends StatelessWidget {
  const CasesRatesRow({
    Key key,
    @required this.country,
  }) : super(key: key);

  final Country country;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        LabeledValueText(
          labelText: 'Ativos',
          valueText: '${country.activeCasesRate.toStringAsFixed(0)}%',
          valueFontSize: 22.0,
          valueFontColor: Color(0xFF4461C2),
          valueFontWeight: FontWeight.bold,
          containerHeight: 51.0,
        ),
        LabeledValueText(
          labelText: 'Curados',
          valueText: '${country.recoveredCasesRate.toStringAsFixed(0)}%',
          valueFontSize: 22.0,
          valueFontColor: Color(0xFF5FD92B),
          valueFontWeight: FontWeight.bold,
          containerHeight: 51.0,
        ),
        LabeledValueText(
          labelText: 'Óbitos',
          valueText: '${country.deathRate.toStringAsFixed(0)}%',
          valueFontSize: 22.0,
          valueFontColor: Color(0xFFFF2665),
          valueFontWeight: FontWeight.bold,
          containerHeight: 51.0,
        ),
      ],
    );
  }
}
