import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'string.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() => runApp(LearningFlutterapp());

class LearningFlutter extends StatefulWidget {
  @override
  createState() => LearningFlutterState();
}


class LearningFlutterState extends State<LearningFlutter> {
  var _members = [];
  final _biggerFont = const TextStyle(fontSize: 18.0);

  _loadData() async {
    String dataURL = "https://api.github.com/orgs/raywenderlich/members";
    http.Response response = await http.get(dataURL);
    setState(() {
      _members = json.decode(response.body);
    });
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.appTitle),
      ), // Why child?
      body: Center(child: Text(Strings.appTitle)),
    );
  }
}

@override
class LearningFlutterapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appTitle,
      home: LearningFlutter(),
    );
  }
}
