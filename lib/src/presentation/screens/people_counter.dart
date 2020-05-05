import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:people_counter/src/presentation/widgets/button.dart';
import 'package:people_counter/src/presentation/widgets/subtitle.dart';
import 'package:people_counter/src/presentation/widgets/title.dart';

class PeopleCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'People Counter',
      home: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AppTitle(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Button(text: '+1', onPress: () => {}),
              Button(text: '-1', onPress: () => {}),
            ]
          ),
          Subtitle(),
        ]
      )
    );
  }
}
