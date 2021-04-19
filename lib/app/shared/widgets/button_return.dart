import 'package:flutter/material.dart';

class ReturnButton extends StatelessWidget {
  const ReturnButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back_ios_rounded),
      onPressed: () => Navigator.of(context).pop(),
      iconSize: 19.0,
      color: Color(0xFF1E2243),
      padding: const EdgeInsets.fromLTRB(25.0, 19.0, 2.0, 72.0),
    );
  }
}
