import 'package:desafio_covid/app/pages/page_continent_overview.dart';
import 'package:desafio_covid/app/pages/page_home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF3F4F9),
      ),
      initialRoute: '/continent_overview',
      routes: {
        '/': (context) => HomePage(),
        '/continent_overview': (context) => ContinentOverviewPage(),
      },
    );
  }
}
