import 'package:flutter/material.dart';

class NoIconAppBarWithTabBar extends StatelessWidget
    implements PreferredSizeWidget {
  const NoIconAppBarWithTabBar({Key key, @required this.title})
      : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFFBFBFD),
      elevation: 0.0,
      bottom: TabBar(
        tabs: [],
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
      automaticallyImplyLeading: false,
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 53.0);
}
