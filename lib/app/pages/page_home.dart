import 'package:desafio_covid/app/shared/widgets/appbar_default.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: 'Covid-19'),
      body: ListView(
        padding: EdgeInsets.fromLTRB(14.5, 20.5, 14.5, 20.5),
        children: [
          ButtonTheme(
            minWidth: 345.0,
            // height: 79.0,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
              onPressed: () => {},
              child: ListTile(
                contentPadding: EdgeInsets.fromLTRB(0.0, 4.0, 0.0, 5.0),
                leading: Image.asset(
                  'assets/images/icon_asia_44x44.png',
                  width: 44.0,
                  height: 44.0,
                ),
                title: Text(
                  'Asia',
                  style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontStyle: FontStyle.normal,
                    fontSize: 13.0,
                    color: Color(0xFF1E2243),
                  ),
                ),
                subtitle: Text(
                  '45 países',
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
          ),
        ],
      ),
    );
  }
}
