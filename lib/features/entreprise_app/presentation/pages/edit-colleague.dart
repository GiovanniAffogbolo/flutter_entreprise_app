import 'package:flutter_entreprise_app/features/entreprise_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class EditColleague extends StatefulWidget {
  @override
  _EditColleagueState createState() => _EditColleagueState();
}

class _EditColleagueState extends State<EditColleague> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
          title: Text('Modifier Collègue'),
          centerTitle: true,
          backgroundColor: Colors.grey[850]),
      body: EditColleagueWidget(),
    );
  }
}
