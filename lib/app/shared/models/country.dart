import 'package:flutter/material.dart';

class Country {
  Country();

  Country.fromJson(Map<String, dynamic> json) {
    name = json['country'];
    totalCases = json['cases'];
    activeCases = json['active'];
    totalRecovered = json['recovered'];
    totalDeaths = json['deaths'];
  }

  String name;
  int totalCases;
  int activeCases;
  int totalRecovered;
  int totalDeaths;

  double get activeCasesRate => activeCases / totalCases * 100.0;
  double get recoveredCasesRate => totalRecovered / totalCases * 100.0;
  double get deathRate => totalDeaths / totalCases * 100.0;
}
