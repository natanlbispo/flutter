import 'package:flutter/material.dart';
/*
  Stateless -> Widgets que não podem ser alterados(constantes)
  Stateful -> widgets que podem ser alterados (variáveis)
*/

void main() {
  runApp(new MaterialApp(
    debugShowMaterialGrid: false,
    home: HomeStateful(),
  ));
}

class HomeStateful extends StatefulWidget {
  @override
  _HomeStatefulState createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {
  @override
  var _texto = "Test";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App bar",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.blueGrey)),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                print("Clicou BÊ");
                setState(() {
                  _texto = "Curso Flutter";
                });
                // _texto = "Curso Flutter";
              },
              color: Colors.blueGrey,
              child: Text("Clique Aqui"),
            ),
            Text("Nome: $_texto")
          ],
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _titulo = "App bar";
  }
}

class FraseDoDia {}
