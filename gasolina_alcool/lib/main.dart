import 'package:flutter/material.dart';
import 'package:gasolina_alcool/entdados.dart';

void main() => runApp(EntradaDados());

class EntradaDados extends StatefulWidget {
  EntradaDados({Key key}) : super(key: key);

  @override
  _EntradaDadosState createState() => _EntradaDadosState();
}

class _EntradaDadosState extends State<EntradaDados> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Alcool ou Gasolina',
      home: HomeApp(),
    );
  }
}
