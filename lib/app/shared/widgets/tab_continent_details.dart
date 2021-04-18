import 'package:desafio_covid/app/shared/widgets/text_labeled_value.dart';
import 'package:flutter/material.dart';

class ContinentDetailsTab extends StatelessWidget {
  const ContinentDetailsTab({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  color: Colors.white,
                  width: 345.0,
                  height: 246.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Total',
                            style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                              color: Color(0xFF1E2243),
                            ),
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
                )
              ],
            ),
            Row(
              children: [
                Container(
                  color: Colors.white,
                  width: 345.0,
                  height: 156.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Hoje',
                            style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                              color: Color(0xFF1E2243),
                            ),
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
                )
              ],
            ),
            Row(
              children: [
                Container(
                  color: Colors.white,
                  width: 345.0,
                  height: 159.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Testes',
                            style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                              color: Color(0xFF1E2243),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          LabeledValueText(
                            labelText: 'Realizados',
                            valueText: '30000',
                          ),
                          LabeledValueText(
                            labelText: 'População',
                            valueText: '100000',
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
