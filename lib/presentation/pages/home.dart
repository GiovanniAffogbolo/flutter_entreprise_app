import 'package:flutter_entreprise_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Flutter Entreprise'),
          centerTitle: true,
          backgroundColor: Colors.grey[850]),
      body: ColleaguesList(),
    );
  }
}
