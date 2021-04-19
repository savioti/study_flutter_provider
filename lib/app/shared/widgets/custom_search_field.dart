import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  SearchField({
    Key key,
    @required this.currentInput,
    @required this.onValueChanged,
    this.hintText = '',
    this.focusColor = const Color(0xFF4461C2),
    this.hintFontColor = const Color(0xFF969AA8),
    this.hintFontFamily = 'Ubuntu',
    this.hintFontSize = 15.0,
    this.padding = const EdgeInsets.symmetric(horizontal: 14.5, vertical: 14.5),
  }) : super(key: key);

  final String currentInput;
  final ValueChanged<String> onValueChanged;
  final String hintText;
  final Color focusColor;
  final Color hintFontColor;
  final String hintFontFamily;
  final double hintFontSize;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final _controller = TextEditingController();
    return Padding(
      padding: padding,
      child: TextField(
        controller: _controller,
        onChanged: onValueChanged,
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(),
          prefixIcon: Icon(
            Icons.search_rounded,
            color: currentInput.isNotEmpty
                ? const Color(0xFF4461C2)
                : const Color(0xFF969AA8),
          ),
          focusColor: focusColor,
          hintStyle: TextStyle(
            color: hintFontColor,
            fontFamily: hintFontFamily,
            fontSize: hintFontSize,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: focusColor,
              width: 2.0,
            ),
          ),
        ),
      ),
    );
  }
}
