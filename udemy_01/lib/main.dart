import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowMaterialGrid: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("App bar",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.blueGrey)),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text("T1"),
            Text("T1"),
          ],
        ),
        padding: EdgeInsets.all(120),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            children: <Widget>[
              Text(
                "bottom app bar",
                style: TextStyle(
                    color: Colors.blueGrey, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    ),
  ));
}

class FraseDoDia {}
