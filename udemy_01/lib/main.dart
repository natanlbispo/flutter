import 'dart:math';
import "package:flutter/material.dart";

void main() => (runApp(MaterialApp(
      home: FrasesDoDia(),
      debugShowCheckedModeBanner: false,
    )));

class FrasesDoDia extends StatefulWidget {
  @override
  _FrasesDoDiaState createState() => _FrasesDoDiaState();
}

class _FrasesDoDiaState extends State<FrasesDoDia> {
  var _frases = [
    "Frase 1",
    "Frase 2",
    "Frase 3",
    "Frase 4",
  ];

  var _padrao = "Clique Aqui";

  int _gerarFrase() {
    var num = new Random().nextInt(_frases.length);
    return num;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frase do Dia", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Container(
            padding: EdgeInsets.all(16),
            // width: double.infinity,
            /*decoration: BoxDecoration(
              border: Border.all(width: 3, color: Colors.redAccent),
            ),*/
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset("images/logo.png"),
                Text(
                  _padrao,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                RaisedButton(
                  child: Text("Nova Frase",
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  color: Colors.blue,
                  onPressed: () {
                    var num = _gerarFrase();
                    setState(() {
                      _padrao = _frases[num];
                    });
                  },
                ),
              ],
            )),
      ),
    );
  }
}
