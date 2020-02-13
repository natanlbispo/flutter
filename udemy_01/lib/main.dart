import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Frase do Dia',
    home: Column(
      children: <Widget>[
        Text("Usuário: "),
        Text("Senha: "),
      ],
    ),
    // home: Container(color: Colors.amber),
  ));
}

class FraseDoDia {}
