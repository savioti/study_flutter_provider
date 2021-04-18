import 'package:desafio_covid/app/shared/models/continent.dart';
import 'package:desafio_covid/app/shared/widgets/icon_arrow_forward.dart';
import 'package:flutter/material.dart';

class ContinentListTile extends StatelessWidget {
  const ContinentListTile({
    Key key,
    @required this.continent,
  }) : super(key: key);

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
    return ListTile(
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
      trailing: ArrowForwardIcon(),
    );
  }
}
