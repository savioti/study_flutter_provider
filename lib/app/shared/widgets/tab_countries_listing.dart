import 'package:desafio_covid/app/shared/models/continent.dart';
import 'package:desafio_covid/app/shared/widgets/boxdecoration_white_with_shadow.dart';
import 'package:desafio_covid/app/shared/widgets/icon_arrow_forward.dart';
import 'package:flutter/material.dart';

class CountriesListingTab extends StatelessWidget {
  const CountriesListingTab({
    Key key,
    @required this.continent,
  }) : super(key: key);

  final Continent continent;

  @override
  Widget build(BuildContext context) {
    // TODO: adicionar campo de busca por país
    // TODO: Usar provider pra mostrar elementos da busca
    return ListView.separated(
      padding: EdgeInsets.fromLTRB(14.5, 19.5, 14.5, 19.5),
      itemCount: continent.countriesCount,
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
                  arguments: continent.countriesNames[i],
                )
              },
              child: ListTile(
                contentPadding: EdgeInsets.fromLTRB(11.0, 3.0, 0.0, 4.0),
                leading: Text(
                  continent.countriesNames[i],
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
    );
  }
}
