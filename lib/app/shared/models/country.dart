class Country {
  Country();

  Country.fromJson(Map<String, dynamic> json) {
    name = json['country'];
    totalCases = json['cases'];
    activeCases = json['active'];
    totalRecovered = json['recovered'];
    totalDeaths = json['deaths'];
    var countryInfoContent = json['countryInfo'].toString();
    var regex = RegExp('(http){1}.*[^}]');
    var match = regex.firstMatch(countryInfoContent);
    flagLink = match.group(0);
  }

  String name;
  int totalCases;
  int activeCases;
  int totalRecovered;
  int totalDeaths;
  String flagLink;

  double get activeCasesRate => activeCases / totalCases * 100.0;
  double get recoveredCasesRate => totalRecovered / totalCases * 100.0;
  double get deathRate => totalDeaths / totalCases * 100.0;
}
