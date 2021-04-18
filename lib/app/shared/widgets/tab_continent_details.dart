import 'package:desafio_covid/app/shared/models/continent.dart';
import 'package:desafio_covid/app/shared/widgets/container_tests.dart';
import 'package:desafio_covid/app/shared/widgets/container_today_cases.dart';
import 'package:desafio_covid/app/shared/widgets/container_total_cases.dart';
import 'package:desafio_covid/app/shared/widgets/row_separator.dart';
import 'package:flutter/material.dart';

class ContinentDetailsTab extends StatelessWidget {
  const ContinentDetailsTab({
    Key key,
    @required this.continent,
  }) : super(key: key);

  final Continent continent;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(15.0, 21.0, 15.0, 21.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TotalCasesContainer(
            continent: continent,
          ),
          SeparatorRow(),
          TodayCasesContainer(
            continent: continent,
          ),
          SeparatorRow(),
          TestsContainer(
            continent: continent,
          ),
        ],
      ),
    );
  }
}
