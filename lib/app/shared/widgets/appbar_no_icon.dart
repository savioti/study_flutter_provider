import 'package:desafio_covid/app/shared/widgets/button_return.dart';
import 'package:flutter/material.dart';

class NoIconAppBar extends StatelessWidget implements PreferredSizeWidget {
  const NoIconAppBar({Key key, @required this.title, this.tabBar})
      : super(key: key);

  final String title;
  final TabBar tabBar;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFFBFBFD),
      elevation: 0.0,
      bottom: PreferredSize(
        preferredSize: preferredSize,
        child: Container(
          height: 1.0,
          color: Colors.white,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'Ubuntu',
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
          color: Color(0xFF1E2243),
        ),
      ),
      leading: Navigator.canPop(context) ? ReturnButton() : null,
      leadingWidth: 36.0,
      automaticallyImplyLeading: false,
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 53.0);
}
