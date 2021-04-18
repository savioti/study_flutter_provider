import 'package:flutter/material.dart';

class SearchField extends StatefulWidget {
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
  _SearchFieldState createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding,
      child: TextField(
        controller: _controller,
        onChanged: widget.onValueChanged,
        decoration: InputDecoration(
          hintText: widget.hintText,
          border: OutlineInputBorder(),
          prefixIcon: Icon(
            Icons.search_rounded,
            color: widget.currentInput.isNotEmpty
                ? const Color(0xFF4461C2)
                : const Color(0xFF969AA8),
          ),
          focusColor: widget.focusColor,
          hintStyle: TextStyle(
            color: widget.hintFontColor,
            fontFamily: widget.hintFontFamily,
            fontSize: widget.hintFontSize,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: widget.focusColor,
              width: 2.0,
            ),
          ),
        ),
      ),
    );
  }
}
