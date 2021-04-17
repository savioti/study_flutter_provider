import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({Key key, @required this.title}) : super(key: key);

  final String title;

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
      centerTitle: true,
      leading: Image.asset(
        'assets/images/icon_virus_30x29.png',
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 53.0);
}
