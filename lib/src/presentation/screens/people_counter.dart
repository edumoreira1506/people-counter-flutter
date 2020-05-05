import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:people_counter/src/presentation/widgets/button.dart';
import 'package:people_counter/src/presentation/widgets/subtitle.dart';
import 'package:people_counter/src/presentation/widgets/title.dart';

class PeopleCounter extends StatefulWidget {
  @override
  _PeopleCounterState createState() => _PeopleCounterState();
}

class _PeopleCounterState extends State<PeopleCounter> {
  int _people = 0;

  void _changePeople(int delta) {
    setState(() {
      _people += delta;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          'assets/images/restaurant.jpg',
          fit: BoxFit.cover,
          height: 1000,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AppTitle(amountOfPeople: _people),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Button(
                    text: '+1',
                    onPressed: () {
                      _changePeople(1);
                    }
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Button(
                    text: '-1', 
                    onPressed: () {
                      _changePeople(-1);
                    }
                  ),
                ),              
              ]
            ),
            Subtitle(),
          ]
        )
      ]
    );
  }
}
