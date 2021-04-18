import 'package:desafio_covid/app/shared/models/continent.dart';
import 'package:desafio_covid/app/shared/widgets/button_continent.dart';
import 'package:flutter/material.dart';

class ContinentsList extends StatelessWidget {
  const ContinentsList({Key key, this.continents});

  final List<Continent> continents;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.fromLTRB(14.5, 20.5, 14.5, 20.5),
      itemCount: continents.length,
      itemBuilder: (_, i) {
        return ContinentButton(
          continent: continents[i],
        );
      },
      separatorBuilder: (_, i) {
        return Divider(
          height: 12.0,
          color: Color(0x00000000),
        );
      },
    );
  }
}
