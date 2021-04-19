import 'package:flutter/material.dart';

class CountriesListingProvider with ChangeNotifier {
  List<String> fullList;
  List<String> filteredList;
  String currentInput;

  CountriesListingProvider() {
    currentInput = '';
    filteredList = [];
  }

  void filterList(List<String> fullList, String query) {
    _validateFullList(fullList);
    List<String> filteredList = [];

    fullList.forEach((countryName) {
      if (countryName.toLowerCase().contains(query.toLowerCase()))
        filteredList.add(countryName);
    });

    this.filteredList.clear();
    this.filteredList.addAll(filteredList);
    currentInput = query;
    notifyListeners();
  }

  List<String> getFilteredList(List<String> fullList) {
    _validateFullList(fullList);

    if ((filteredList.length == 0) && (currentInput.isEmpty)) {
      filteredList.addAll(fullList);
    }

    return filteredList;
  }

  void _validateFullList(List<String> fullList) {
    if ((this.fullList == null) ||
        (this.fullList[0].compareTo(fullList[0]) != 0)) {
      this.fullList = fullList;
      filteredList.clear();
    }
  }
}
