import 'package:flutter_entreprise_app/features/entreprise_app/data/models/colleague.dart';
import 'package:flutter_entreprise_app/features/entreprise_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ColleagueDetails extends StatefulWidget {
  @override
  _ColleagueDetailsState createState() => _ColleagueDetailsState();
}

class _ColleagueDetailsState extends State<ColleagueDetails> {
  @override
  Widget build(BuildContext context) {
    final Colleague args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(args.prenom + ' ' + args.nom),
      ),
      body: ColleagueDetailsWidget(),
    );
  }
}
