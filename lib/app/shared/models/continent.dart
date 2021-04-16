import 'package:flutter/material.dart';

class Continent {
  const Continent(
      {@required this.totalCases,
      @required this.activeCases,
      @required this.totalRecovered,
      @required this.totalDeaths,
      @required this.todayCases,
      @required this.todayDeaths,
      @required this.totalTests,
      @required this.population});

  final int totalCases;
  final int activeCases;
  final int totalRecovered;
  final int totalDeaths;
  final int todayCases;
  final int todayDeaths;
  final int totalTests;
  final int population;

  double get activeCasesRate => activeCases / totalCases * 100.0;
  double get recoveredCasesRate => totalRecovered / totalCases * 100.0;
  double get deathRate => totalDeaths / totalCases * 100.0;
}
