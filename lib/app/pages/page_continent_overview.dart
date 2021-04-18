import 'package:desafio_covid/app/shared/models/continent.dart';
import 'package:desafio_covid/app/shared/widgets/appbar_no_icon.dart';
import 'package:desafio_covid/app/shared/widgets/button_return.dart';
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
        appBar: AppBar(
          backgroundColor: const Color(0xFFFBFBFD),
          elevation: 0.0,
          leadingWidth: 36.0,
          automaticallyImplyLeading: false,
          leading: Navigator.canPop(context) ? ReturnButton() : null,
          title: Text(
            continent.name.toString(),
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
              color: Color(0xFF1E2243),
            ),
          ),
          bottom: TabBar(
            indicatorColor: Color(0xFF4461C2),
            indicatorWeight: 4.0,
            unselectedLabelColor: Color(0xFF969AA8),
            labelColor: Color(0xFF4461C2),
            tabs: [
              Tab(
                child: Text(
                  'Detalhes',
                  style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontStyle: FontStyle.normal,
                    fontSize: 15.0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Países',
                  style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontStyle: FontStyle.normal,
                    fontSize: 15.0,
                  ),
                ),
              ),
            ],
          ),
        ),
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
