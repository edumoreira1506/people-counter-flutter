import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Button extends StatelessWidget {
  final String text;
  final void Function() onPressed;

  Button({
    @required this.text,
    @required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text(this.text, style: TextStyle(fontSize: 40, color: Colors.white)),
      onPressed: this.onPressed,
    );
  }
}
