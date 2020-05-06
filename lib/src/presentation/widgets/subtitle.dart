import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Subtitle extends StatelessWidget {
  final bool canEnter;

  Subtitle(this.canEnter);

  @override
  Widget build(BuildContext context) {
    return Text(
      canEnter ? 'Pode entrar!' : 'Lotado!',
      style: TextStyle(
        color: Colors.white, 
        fontWeight: FontWeight.bold, 
        fontSize: 30
      )
    );
  }
}
