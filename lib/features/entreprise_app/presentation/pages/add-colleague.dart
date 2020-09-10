import 'package:flutter_entreprise_app/features/entreprise_app/presentation/widgets/colleague_add_widget.dart';
import 'package:flutter/material.dart';

class AddColleague extends StatefulWidget {
  @override
  _AddColleagueState createState() => _AddColleagueState();
}

class _AddColleagueState extends State<AddColleague> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
          title: Text('Ajouter Collègue'),
          centerTitle: true,
          backgroundColor: Colors.grey[850]),
      body: AddColleagueWidget(),
    );
  }
}
