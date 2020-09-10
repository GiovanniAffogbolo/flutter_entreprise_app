import 'package:flutter_entreprise_app/presentation/pages/home.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:splashscreen/splashscreen.dart';

class LoadingSplash extends StatefulWidget {
  @override
  _LoadingSplashState createState() => _LoadingSplashState();
}

class _LoadingSplashState extends State<LoadingSplash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 4,
      navigateAfterSeconds: new MyHomePage(),
      title: new Text(
        'Flutter Entreprise',
        textScaleFactor: 2,
      ),
      image: new Image.asset(
        'images/splash.png',
      ),
      loadingText: Text("Chargement..."),
      photoSize: 100.0,
      loaderColor: Colors.blue,
    );
  }
}
