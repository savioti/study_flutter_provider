import 'package:desafio_covid/app/shared/models/continent.dart';
import 'package:flutter/material.dart';

class CountriesListingTab extends StatelessWidget {
  const CountriesListingTab({
    Key key,
    @required this.continent,
  }) : super(key: key);

  final Continent continent;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
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
    );
  }
}
