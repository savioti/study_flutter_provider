import 'package:desafio_covid/app/shared/widgets/text_labeled_value.dart';
import 'package:desafio_covid/app/shared/widgets/text_title.dart';
import 'package:flutter/material.dart';

class TodayCasesContainer extends StatelessWidget {
  const TodayCasesContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 325.0,
      height: 156.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TitleText(
                text: 'Hoje',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              LabeledValueText(
                labelText: 'Casos',
                valueText: '+ 50000',
              ),
              LabeledValueText(
                labelText: 'Óbitos',
                valueText: '- 1000',
                valueFontColor: Color(0xFFFF2665),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
