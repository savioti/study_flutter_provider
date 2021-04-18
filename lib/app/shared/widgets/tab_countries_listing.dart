import 'package:desafio_covid/app/shared/models/continent.dart';
import 'package:desafio_covid/app/shared/widgets/boxdecoration_white_with_shadow.dart';
import 'package:desafio_covid/app/shared/widgets/custom_search_field.dart';
import 'package:desafio_covid/app/shared/widgets/icon_arrow_forward.dart';
import 'package:flutter/material.dart';

class CountriesListingTab extends StatefulWidget {
  const CountriesListingTab({
    Key key,
    @required this.continent,
  }) : super(key: key);

  final Continent continent;

  @override
  _CountriesListingTabState createState() => _CountriesListingTabState();
}

class _CountriesListingTabState extends State<CountriesListingTab> {
  List<String> filteredResults = [];
  final controller = TextEditingController();
  String currentInput = '';

  @override
  Widget build(BuildContext context) {
    // TODO: Usar provider pra mostrar elementos da busca

    void _filterResults(String query) {
      List<String> filteredResults = [];
      widget.continent.countriesNames.forEach((countryName) {
        if (countryName.toLowerCase().contains(query.toLowerCase()))
          filteredResults.add(countryName);
      });

      this.filteredResults.clear();

      setState(() {
        this.filteredResults = [...filteredResults];
        currentInput = query;
      });
    }

    List<String> _getResults() {
      if ((filteredResults.length == 0) && (currentInput.isEmpty)) {
        filteredResults.addAll(widget.continent.countriesNames);
      }

      return filteredResults;
    }

    return Column(
      children: [
        SearchField(
          currentInput: currentInput,
          padding: const EdgeInsets.symmetric(horizontal: 14.5, vertical: 14.5),
          onValueChanged: _filterResults,
          hintText: 'Procurar por países...',
          hintFontSize: 15.0,
          hintFontFamily: 'Ubuntu',
          hintFontColor: const Color(0xFF969AA8),
        ),
        Expanded(
          child: ListView.separated(
            padding: EdgeInsets.fromLTRB(14.5, 7.0, 14.5, 19.5),
            itemCount: _getResults().length,
            itemBuilder: (_, i) {
              return ButtonTheme(
                child: Container(
                  height: 55.0,
                  decoration: WhiteBoxDecorationWithShadow.buildBoxDecoration(),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(4.0),
                          ),
                        ),
                      ),
                      elevation: MaterialStateProperty.all(0.0),
                    ),
                    onPressed: () => {
                      Navigator.pushNamed(
                        context,
                        '/country_details',
                        arguments: _getResults()[i],
                      )
                    },
                    child: ListTile(
                      contentPadding: EdgeInsets.fromLTRB(11.0, 3.0, 0.0, 4.0),
                      leading: Text(
                        _getResults()[i],
                        style: TextStyle(
                          fontFamily: 'Ubuntu',
                          fontStyle: FontStyle.normal,
                          fontSize: 15.0,
                          color: Color(0xFF1E2243),
                        ),
                      ),
                      trailing: ArrowForwardIcon(),
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (_, __) {
              return Divider(
                height: 17.0,
                color: Color(0x00000000),
              );
            },
          ),
        )
      ],
    );
  }
}
