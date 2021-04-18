class Continent {
  Continent.fromJson(Map<String, dynamic> json) {
    name = json['continent'];
    totalCases = json['cases'];
    activeCases = json['active'];
    totalRecovered = json['recovered'];
    totalDeaths = json['deaths'];
    todayCases = json['todayCases'];
    todayDeaths = json['todayDeaths'];
    totalTests = json['tests'];
    population = json['population'];
    countriesNames = json['countries'];
  }

  String name;
  int totalCases;
  int activeCases;
  int totalRecovered;
  int totalDeaths;
  int todayCases;
  int todayDeaths;
  int totalTests;
  int population;
  List countriesNames;

  double get activeCasesRate => activeCases / totalCases * 100.0;
  double get recoveredCasesRate => totalRecovered / totalCases * 100.0;
  double get deathRate => totalDeaths / totalCases * 100.0;
  int get countriesCount => countriesNames.length;
}
