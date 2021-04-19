import 'package:desafio_covid/app/shared/models/continent.dart';
import 'package:desafio_covid/app/shared/widgets/button_return.dart';
import 'package:flutter/material.dart';

class ContinentOverviewAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const ContinentOverviewAppBar({
    Key key,
    @required this.continent,
  }) : super(key: key);

  final Continent continent;

  @override
  Size get preferredSize => Size(double.infinity, 53.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }
}
