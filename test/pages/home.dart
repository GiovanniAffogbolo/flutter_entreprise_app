import 'package:flutter_entreprise_app/data/models/colleague.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Colleague> colleagues = [
    Colleague(
        nom: "DOE",
        prenom: "John",
        mail: "johndoe@gmail.com",
        telephone: "0708090565",
        fonction: "Commercial"),
    Colleague(
        nom: "SON",
        prenom: "Martin",
        mail: "sonmartin@gmail.com",
        telephone: "0684512980",
        fonction: "Comptable"),
    Colleague(
        nom: "DUPONT",
        prenom: "Léon",
        mail: "ledupont@gmail.com",
        telephone: "0721568490",
        fonction: "Développeur"),
    Colleague(
        nom: "YUKIHIRA",
        prenom: "Soma",
        mail: "somasama@gmail.com",
        telephone: "0702154895",
        fonction: "Administrateur réseaux"),
    Colleague(
        nom: "UCHIHA",
        prenom: "Itachi",
        mail: "katonmaster@gmail.com",
        telephone: "0605040809",
        fonction: "Directeur Général"),
  ];

  void setColleague(index) {
    Colleague colleague = colleagues[index];
    Navigator.pushNamed(context, '/details', arguments: colleague);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
          title: Text('Flutter Entreprise'),
          centerTitle: true,
          backgroundColor: Colors.grey[850]),
      body: ListView.builder(
        itemCount: colleagues.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              SizedBox(height: 8.0),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
                child: Card(
                  child: ListTile(
                    onTap: () {
                      setColleague(index);
                    },
                    title: Text(
                        colleagues[index].nom + ' ' + colleagues[index].prenom),
                    leading: Icon(Icons.person),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
