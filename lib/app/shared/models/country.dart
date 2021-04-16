import 'package:flutter/material.dart';

class Country {
  const Country(
      {@required this.name,
      @required this.totalCases,
      @required this.activeCases,
      @required this.totalRecovered,
      @required this.totalDeaths});

  final String name;
  final int totalCases;
  final int activeCases;
  final int totalRecovered;
  final int totalDeaths;

  double get activeCasesRate => activeCases / totalCases * 100.0;
  double get recoveredCasesRate => totalRecovered / totalCases * 100.0;
  double get deathRate => totalDeaths / totalCases * 100.0;
}
