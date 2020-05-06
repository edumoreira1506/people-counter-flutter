import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppTitle extends StatelessWidget {
  final int amountOfPeople;

  AppTitle({
    @required this.amountOfPeople
  });

  @override
  Widget build(BuildContext context) {
    return Text("Pessoas: $amountOfPeople", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold));
  }
}
