import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'string.dart';

void main() => runApp(LearningFlutterapp());

class LearningFlutter extends StatefulWidget {
  @override
  createState() => LearningFlutterState();
}

class LearningFlutterState extends State<LearningFlutter> {
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
