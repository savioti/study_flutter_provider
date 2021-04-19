import 'package:desafio_covid/app/pages/page_continent_overview.dart';
import 'package:desafio_covid/app/pages/page_country_details.dart';
import 'package:desafio_covid/app/pages/page_home.dart';
import 'package:desafio_covid/app/providers/countries_listing_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CountriesListingProvider(),
      child: MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: Color(0xFFF3F4F9),
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => HomePage(),
          '/continent_overview': (context) => ContinentOverviewPage(),
          '/country_details': (context) => CountryDetailsPage(),
        },
      ),
    );
  }
}
