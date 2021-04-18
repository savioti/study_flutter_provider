import 'package:desafio_covid/app/shared/models/continent.dart';
import 'package:desafio_covid/app/shared/widgets/text_labeled_value.dart';
import 'package:desafio_covid/app/shared/widgets/text_title.dart';
import 'package:flutter/material.dart';

class TestsContainer extends StatelessWidget {
  const TestsContainer({
    Key key,
    @required this.continent,
  }) : super(key: key);

  final Continent continent;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 325.0,
      height: 159.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TitleText(
                text: 'Testes',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              LabeledValueText(
                labelText: 'Realizados',
                valueText: continent.totalTests.toString(),
              ),
              LabeledValueText(
                labelText: 'População',
                valueText: continent.population.toString(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
