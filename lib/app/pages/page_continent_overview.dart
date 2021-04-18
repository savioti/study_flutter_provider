import 'package:desafio_covid/app/shared/models/continent.dart';
import 'package:desafio_covid/app/shared/widgets/appbar_no_icon.dart';
import 'package:desafio_covid/app/shared/widgets/center_error_text.dart';
import 'package:flutter/material.dart';

class ContinentOverviewPage extends StatelessWidget {
  const ContinentOverviewPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: mudar para final
    Continent continent = ModalRoute.of(context).settings.arguments;

    if (continent == null) {
      continent = Continent();
      continent.name = 'Asia';
      continent.totalCases = 999999;
      continent.activeCases = 1000;
      continent.totalRecovered = 55555;
      continent.totalDeaths = 666666;
      continent.todayCases = 800;
      continent.todayDeaths = 666;
      continent.totalTests = 300000;
      continent.population = 1000000;
    }

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
          leading: Navigator.canPop(context)
              ? IconButton(
                  // TODO: deixar setinha "grossa"
                  icon: const Icon(Icons.arrow_back_ios),
                  onPressed: () => Navigator.of(context).pop(),
                  iconSize: 20.0,
                  color: Color(0xFF1E2243),
                  padding: const EdgeInsets.fromLTRB(25.0, 19.0, 14.0, 72.0),
                )
              : null,
          title: Text(
            continent.name.toString(),
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
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
      ),
    );
  }
}
