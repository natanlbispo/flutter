import "package:flutter/material.dart";

class HomeApp extends StatefulWidget {
  HomeApp({Key key}) : super(key: key);

  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de Dados"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(32),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(labelText: "Digite um valor"),
              // enabled: false,
              // maxLength: 2,
              // maxLengthEnforced: false, // fica vermelho quando passa do numero máximo
              style: TextStyle(fontSize: 15, color: Colors.black45),
              // obscureText: true, //Password
              // onChanged: (String campo) {
              //   print('Valor digitado $campo');
              // },
              onSubmitted: (String campo) {
                print('$campo');
              },
              controller: _textEditingController,
            ),
          ),
          RaisedButton(
            child: Text("Salvar"),
            color: Colors.lightBlue,
            onPressed: () {
              print('Valor digitado: ${_textEditingController.text}');
            },
          ),
        ],
      ),
    );
  }
}
