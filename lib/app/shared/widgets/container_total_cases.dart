import 'package:desafio_covid/app/shared/widgets/text_labeled_value.dart';
import 'package:desafio_covid/app/shared/widgets/text_title.dart';
import 'package:flutter/material.dart';

class TotalCasesContainer extends StatelessWidget {
  const TotalCasesContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 325.0,
      height: 246.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TitleText(
                text: 'Total',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LabeledValueText(
                labelText: 'Total de Casos',
                valueText: 'teste',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              LabeledValueText(
                labelText: 'Ativos',
                valueText: '27%',
                valueFontSize: 22.0,
                valueFontColor: Color(0xFF4461C2),
                valueFontWeight: FontWeight.bold,
                containerHeight: 51.0,
              ),
              LabeledValueText(
                labelText: 'Curados',
                valueText: '27%',
                valueFontSize: 22.0,
                valueFontColor: Color(0xFF5FD92B),
                valueFontWeight: FontWeight.bold,
                containerHeight: 51.0,
              ),
              LabeledValueText(
                labelText: 'Óbitos',
                valueText: '27%',
                valueFontSize: 22.0,
                valueFontColor: Color(0xFFFF2665),
                valueFontWeight: FontWeight.bold,
                containerHeight: 51.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
