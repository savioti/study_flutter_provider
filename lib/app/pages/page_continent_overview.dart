import 'package:desafio_covid/app/shared/models/continent.dart';
import 'package:desafio_covid/app/shared/widgets/appbar_continent_overview.dart';
import 'package:desafio_covid/app/shared/widgets/appbar_no_icon.dart';
import 'package:desafio_covid/app/shared/widgets/center_error_text.dart';
import 'package:desafio_covid/app/shared/widgets/tab_continent_details.dart';
import 'package:desafio_covid/app/shared/widgets/tab_countries_listing.dart';
import 'package:flutter/material.dart';

class ContinentOverviewPage extends StatelessWidget {
  const ContinentOverviewPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Continent continent = ModalRoute.of(context).settings.arguments;

    if (continent == null) {
      return Scaffold(
        appBar: NoIconAppBar(
          title: 'Erro',
        ),
        body: CenterErrorText(
            errorMessage: '\"$continent\" não é um continente válido.'),
      );
    }
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: ContinentOverviewAppBar(continent: continent),
        body: TabBarView(
          children: [
            ContinentDetailsTab(
              continent: continent,
            ),
            CountriesListingTab(
              continent: continent,
            ),
          ],
        ),
      ),
    );
  }
}
