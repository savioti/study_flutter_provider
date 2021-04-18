import 'package:desafio_covid/app/shared/models/continent.dart';
import 'package:flutter/material.dart';

class ContinentButton extends StatelessWidget {
  const ContinentButton({Key key, @required this.continent}) : super(key: key);

  final Continent continent;

  String _findContinentIcon(String name) {
    switch (name) {
      case 'Asia':
        return 'assets/images/icon_asia_44x44.png';
      case 'North America':
        return 'assets/images/icon_america_44x44.png';
      case 'South America':
        return 'assets/images/icon_america_44x44.png';
      case 'Europe':
        return 'assets/images/icon_europe_44x44.png';
      case 'Africa':
        return 'assets/images/icon_africa_44x44.png';
      case 'Australia/Oceania':
        return 'assets/images/icon_oceania_44x44.png';
      default:
        throw ArgumentError('$name is not a continent.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 345.0,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(4.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0x1000000D),
              offset: Offset(0.0, 4.0),
              // spreadRadius: 3.0,
              blurRadius: 6.0,
            ),
          ],
        ),
        child: ElevatedButton(
          style: ButtonStyle(
            shadowColor: MaterialStateProperty.all(
              Color(0x0000000D),
            ),
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
            Navigator.pushNamed(context, '/continent_overview',
                arguments: continent),
          },
          child: ListTile(
            contentPadding: EdgeInsets.fromLTRB(0.0, 3.0, 0.0, 4.0),
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 22.0,
              child: Image.asset(
                _findContinentIcon(continent.name),
              ),
            ),
            title: Text(
              continent.name,
              style: TextStyle(
                fontFamily: 'Ubuntu',
                fontStyle: FontStyle.normal,
                fontSize: 13.0,
                color: Color(0xFF1E2243),
              ),
            ),
            subtitle: Text(
              '${continent.countriesCount} países',
              style: TextStyle(
                fontFamily: 'Ubuntu',
                fontStyle: FontStyle.normal,
                fontSize: 12.0,
                color: Color(0xFF969AA8),
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: Color(0xFFCCCCCC),
            ),
          ),
        ),
      ),
    );
  }
}
