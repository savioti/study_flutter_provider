import 'package:desafio_covid/app/shared/models/continent.dart';
import 'package:desafio_covid/app/shared/widgets/appbar_no_icon.dart';
import 'package:desafio_covid/app/shared/widgets/button_return.dart';
import 'package:desafio_covid/app/shared/widgets/center_error_text.dart';
import 'package:desafio_covid/app/shared/widgets/tab_continent_details.dart';
import 'package:desafio_covid/app/shared/widgets/text_title.dart';
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
      continent.countriesNames = [
        'Japão',
        'China',
        'Indonésia',
        'Taiwan',
        'Índia',
        'Afeganistão',
        'Síria',
        'Armenia',
        'Georgia'
      ];
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
            ListView.separated(
              padding: EdgeInsets.fromLTRB(14.5, 19.5, 14.5, 19.5),
              itemCount: continent.countriesCount,
              itemBuilder: (_, i) {
                return ButtonTheme(
                  child: Container(
                    height: 55.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(4.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x0700000D),
                          offset: Offset(0.0, 4.0),
                          // spreadRadius: 3.0,
                          blurRadius: 6.0,
                        ),
                      ],
                    ),
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
                      onPressed: () => {},
                      child: ListTile(
                        contentPadding:
                            EdgeInsets.fromLTRB(11.0, 3.0, 0.0, 4.0),
                        leading: Text(
                          continent.countriesNames[i],
                          style: TextStyle(
                            fontFamily: 'Ubuntu',
                            fontStyle: FontStyle.normal,
                            fontSize: 15.0,
                            color: Color(0xFF1E2243),
                          ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 16,
                          color: Color(0xFFCCCCCC),
                        ),
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
          ],
        ),
      ),
    );
  }
}
