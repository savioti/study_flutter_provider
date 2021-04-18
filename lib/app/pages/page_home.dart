import 'package:desafio_covid/app/shared/models/continent.dart';
import 'package:desafio_covid/app/shared/widgets/appbar_default.dart';
import 'package:desafio_covid/app/shared/widgets/listview_continents_list.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  Future<List<Continent>> _httpGet() async {
    var response = await Dio()
        .get('https://disease.sh/v3/covid-19/continents?yesterday=true');

    if (response == null) return null;
    var jsonContent = List.from(response.data);
    List<Continent> continents = [];
    jsonContent.forEach((item) {
      continents.add(Continent.fromJson(item));
    });
    return continents;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: 'Covid-19'),
      body: FutureBuilder<List<Continent>>(
          future: _httpGet(),
          builder: (_, snapshot) {
            return snapshot.hasData
                ? ContinentsList(continents: snapshot.data)
                : Center(
                    child: CircularProgressIndicator(
                      valueColor:
                          AlwaysStoppedAnimation<Color>(Color(0xFF1E2243)),
                    ),
                  );
          }),
    );
  }
}
