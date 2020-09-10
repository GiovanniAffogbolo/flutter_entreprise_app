import 'package:flutter_entreprise_app/data/models/colleague.dart';
import 'package:flutter/material.dart';

class ColleagueDetailsWidget extends StatefulWidget {
  @override
  _ColleagueDetailsWidgetState createState() => _ColleagueDetailsWidgetState();
}

class _ColleagueDetailsWidgetState extends State<ColleagueDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    final Colleague args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
                child: Icon(
              Icons.person,
              color: Colors.white,
              size: 80.0,
            )),
            Divider(
              height: 90.0,
              color: Colors.grey[800],
            ),
            Column(children: [
              SizedBox(height: 10.0),
              Center(
                child: Text(
                  args.nom + ' ' + args.prenom,
                  style: TextStyle(
                      color: Colors.amberAccent[200],
                      letterSpacing: 2.0,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 30.0),
              Center(
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      color: Colors.grey[400],
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      args.mail,
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 18.0,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.0),
              Center(
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.phone,
                      color: Colors.grey[400],
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      args.telephone,
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 18.0,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.0),
              Center(
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.work,
                      color: Colors.grey[400],
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      args.fonction,
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 18.0,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
