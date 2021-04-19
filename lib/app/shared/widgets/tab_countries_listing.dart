import 'package:desafio_covid/app/providers/countries_listing_provider.dart';
import 'package:desafio_covid/app/shared/models/continent.dart';
import 'package:desafio_covid/app/shared/widgets/boxdecoration_white_with_shadow.dart';
import 'package:desafio_covid/app/shared/widgets/custom_search_field.dart';
import 'package:desafio_covid/app/shared/widgets/icon_arrow_forward.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
  String currentInput = '';

  @override
  Widget build(BuildContext context) {
    void _filterResults(String query) {
      currentInput = query;
      Provider.of<CountriesListingProvider>(context, listen: false)
          .filterList(widget.continent.countriesNames, query);
    }

    return Column(
      children: [
        SearchField(
          currentInput: currentInput,
          onValueChanged: _filterResults,
          hintText: 'Procurar por países...',
        ),
        Consumer<CountriesListingProvider>(
          builder: (__, value, ___) {
            return Expanded(
              child: ListView.separated(
                padding: EdgeInsets.fromLTRB(14.5, 7.0, 14.5, 19.5),
                itemCount: value
                    .getFilteredList(widget.continent.countriesNames)
                    .length,
                itemBuilder: (_, i) {
                  return ButtonTheme(
                    child: Container(
                      height: 55.0,
                      decoration:
                          WhiteBoxDecorationWithShadow.buildBoxDecoration(),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
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
                            arguments: value.getFilteredList(
                                widget.continent.countriesNames)[i],
                          )
                        },
                        child: ListTile(
                          contentPadding:
                              EdgeInsets.fromLTRB(11.0, 3.0, 0.0, 4.0),
                          leading: Text(
                            value.getFilteredList(
                                widget.continent.countriesNames)[i],
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
            );
          },
        ),
      ],
    );
  }
}
