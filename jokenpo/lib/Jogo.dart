import 'dart:math';

import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  var _imageApp = AssetImage("images/padrao.png");
  var _resultado = "";
  void howWin(int choiceUser, int choiceGame) {
    if (choiceGame == choiceUser) {
      print("Empatou");
      setState(() {
        this._resultado = "Empatou";
      });
      // User ganha
    } else if ((choiceUser == 0 && choiceGame == 2) ||
        (choiceUser == 1 && choiceGame == 0) ||
        (choiceUser == 2 && choiceGame == 2)) {
      setState(() {
        this._resultado = "User WINS";
      });
      // Game ganha
    } else if ((choiceGame == 0 && choiceUser == 2) ||
        (choiceGame == 1 && choiceUser == 0) ||
        (choiceGame == 2 && choiceUser == 2)) {
      setState(() {
        this._resultado = "Game WINS";
      });
    }
  }

  void _gameJoken(int choiceUser) {
    var choiceGame = new Random().nextInt(3);
    // print('A escolha do game foi $choiceGame');
    switch (choiceGame) {
      case 0:
        setState(() {
          this._imageApp = AssetImage("images/pedra.png");
          howWin(choiceUser, choiceGame);
        });
        break;
      case 1:
        setState(() {
          this._imageApp = AssetImage("images/papel.png");
          howWin(choiceUser, choiceGame);
        });
        break;
      case 2:
        setState(() {
          this._imageApp = AssetImage("images/tesoura.png");
          howWin(choiceUser, choiceGame);
        });
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text("JokenPo", style: TextStyle(color: Colors.white)),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 32, bottom: 16),
              child: Text(
                "Escolha do App",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.purpleAccent),
              ),
            ),
            Image(
              image: this._imageApp,
              height: 120,
            ),
            Padding(
              padding: EdgeInsets.only(top: 32, bottom: 16),
              child: Text(
                "Escolha  uma opção abaixo",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.purpleAccent),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    return _gameJoken(0);
                  },
                  child: Image.asset("images/pedra.png", height: 95),
                ),
                GestureDetector(
                  onTap: () {
                    return _gameJoken(1);
                  },
                  child: Image.asset("images/papel.png", height: 95),
                ),
                GestureDetector(
                  onTap: () {
                    return _gameJoken(2);
                  },
                  child: Image.asset("images/tesoura.png", height: 95),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 32, bottom: 16),
              child: Text(
                _resultado,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.purpleAccent),
              ),
            ),
          ],
        ));
  }
}
