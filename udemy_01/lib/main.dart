import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Frase do Dia',
    home: Row(
      children: <Widget>[
        Text(" T1 "),
        Column(children: <Widget>[Text('Ts1'), Text('Ts2')]),
        Text(' T3 '),
      ],
    ),
    // home: Container(color: Colors.amber),
  ));
}

class FraseDoDia {}
