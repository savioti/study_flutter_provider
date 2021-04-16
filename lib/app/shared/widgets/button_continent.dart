import 'package:flutter/material.dart';

class ContinentButton extends StatelessWidget {
  const ContinentButton(
      {Key key, @required this.continentName, @required this.countriesCount})
      : super(key: key);

  final String continentName;
  final int countriesCount;

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
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
        ),
        onPressed: () => {},
        child: ListTile(
          contentPadding: EdgeInsets.fromLTRB(0.0, 4.0, 0.0, 5.0),
          leading: Image.asset(
            _findContinentIcon(continentName),
            width: 44.0,
            height: 44.0,
          ),
          title: Text(
            continentName,
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontStyle: FontStyle.normal,
              fontSize: 13.0,
              color: Color(0xFF1E2243),
            ),
          ),
          subtitle: Text(
            '$countriesCount países',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontStyle: FontStyle.normal,
              fontSize: 12.0,
              color: Color(0xFF969AA8),
            ),
          ),
          trailing: Image.asset(
            'assets/images/arrow_control_small.png',
          ),
        ),
      ),
    );
  }
}
