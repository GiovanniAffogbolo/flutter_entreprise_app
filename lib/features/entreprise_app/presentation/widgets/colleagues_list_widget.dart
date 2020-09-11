import 'package:flutter_entreprise_app/features/entreprise_app/data/models/colleague.dart';
import 'package:flutter/material.dart';

class ColleaguesList extends StatefulWidget {
  ColleaguesList({Key key}) : super(key: key);

  @override
  _ColleaguesListState createState() => _ColleaguesListState();
}

class _ColleaguesListState extends State<ColleaguesList> {
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

  void editColleague(index, popColleague) {
    final tile = colleagues.firstWhere(
        (item) =>
            item.nom == colleagues[index].nom &&
            item.prenom == colleagues[index].prenom &&
            item.mail == colleagues[index].mail &&
            item.telephone == colleagues[index].telephone &&
            item.fonction == colleagues[index].fonction,
        orElse: null);
    if (tile != null) {
      tile.nom = popColleague['nom'];
      tile.prenom = popColleague['prenom'];
      tile.mail = popColleague['mail'];
      tile.telephone = popColleague['phone'];
      tile.fonction = popColleague['function'];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: ListView.builder(
        itemCount: colleagues.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              SizedBox(height: 8.0),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Card(
                        child: ListTile(
                          onTap: () {
                            setColleague(index);
                          },
                          title: Text(colleagues[index].nom +
                              ' ' +
                              colleagues[index].prenom),
                          leading: Icon(Icons.person),
                          trailing: Wrap(spacing: 0, children: <Widget>[
                            IconButton(
                                icon: Icon(Icons.edit),
                                onPressed: () async {
                                  // Wait for the new datas from the colleague to modify
                                  Colleague colleague = colleagues[index];
                                  dynamic popColleague =
                                      await Navigator.pushNamed(
                                          context, '/editColleague',
                                          arguments: colleague);
                                  if (popColleague == null) {
                                    return;
                                  } else {
                                    setState(() {
                                      // Then edit it
                                      editColleague(index, popColleague);
                                    });
                                  }
                                }),
                            IconButton(
                                icon: Icon(
                                  Icons.delete,
                                  color: Colors.red[500],
                                ),
                                onPressed: () {
                                  setState(() {
                                    // Remove the colleague when delete icon clicked
                                    colleagues.removeAt(index);
                                  });
                                }),
                          ]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        // Await and get back the new colleague.
        onPressed: () async {
          dynamic popColleague =
              await Navigator.pushNamed(context, '/addColleague');

          if (popColleague == null) {
            return;
          } else {
            setState(() {
              Colleague newColleague = Colleague();
              newColleague.nom = popColleague['nom'];
              newColleague.prenom = popColleague['prenom'];
              newColleague.mail = popColleague['mail'];
              newColleague.telephone = popColleague['phone'];
              newColleague.fonction = popColleague['function'];

              colleagues.add(newColleague);
            });
          }
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
