import 'package:flutter_entreprise_app/features/entreprise_app/presentation/pages/add-colleague.dart';
import 'package:flutter_entreprise_app/features/entreprise_app/presentation/pages/edit-colleague.dart';
import 'package:flutter_entreprise_app/features/entreprise_app/presentation/pages/home.dart';
import 'package:flutter_entreprise_app/features/entreprise_app/presentation/pages/colleague-details.dart';
import 'package:flutter_entreprise_app/features/entreprise_app/presentation/widgets/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoadingSplash(),
        '/home': (context) => MyHomePage(),
        '/details': (context) => ColleagueDetails(),
        '/addColleague': (context) => AddColleague(),
        '/editColleague': (context) => EditColleague(),
      },
    );
  }
}
