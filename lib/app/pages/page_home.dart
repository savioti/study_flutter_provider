import 'package:desafio_covid/app/shared/widgets/appbar_default.dart';
import 'package:desafio_covid/app/shared/widgets/button_continent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const int _continentsCount = 6;
    return Scaffold(
      appBar: DefaultAppBar(title: 'Covid-19'),
      body: ListView.separated(
        padding: EdgeInsets.fromLTRB(14.5, 20.5, 14.5, 20.5),
        itemCount: _continentsCount,
        itemBuilder: (_, i) {
          return ContinentButton(
            countriesCount: 1,
            continentName: 'Asia',
          );
        },
        separatorBuilder: (_, i) {
          return Divider(
            height: 12.0,
          );
        },
      ),
    );
  }
}
