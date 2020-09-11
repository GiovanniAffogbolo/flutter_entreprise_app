import 'package:flutter/material.dart';
import 'package:flutter_entreprise_app/features/entreprise_app/data/models/colleague.dart';

class EditColleagueWidget extends StatefulWidget {
  @override
  _EditColleagueWidgetState createState() => _EditColleagueWidgetState();
}

class _EditColleagueWidgetState extends State<EditColleagueWidget> {
  void updateColleague(nom, prenom, mail, phone, function) {
    Navigator.pop(context, {
      'nom': nom.text,
      'prenom': prenom.text,
      'mail': mail.text,
      'phone': phone.text,
      'function': function.text,
    });
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final Colleague args = ModalRoute.of(context).settings.arguments;
    TextEditingController nom = TextEditingController(text: args.nom);
    TextEditingController prenom = TextEditingController(text: args.prenom);
    TextEditingController mail = TextEditingController(text: args.mail);
    TextEditingController phone = TextEditingController(text: args.telephone);
    TextEditingController function = TextEditingController(text: args.fonction);

    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      icon: const Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      hintText: 'Nom du collègue',
                      labelText: 'Nom'),
                  //initialValue: 'args.nom',
                  //initialValue: 'nom',
                  controller: nom,
                  cursorColor: Colors.black,
                  style: TextStyle(color: Colors.black),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Entrer le nom';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 30.0),
                TextFormField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      icon: const Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      hintText: 'Prénom du collègue',
                      labelText: 'Prénom'),
                  controller: prenom,
                  cursorColor: Colors.black,
                  style: TextStyle(color: Colors.black),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Entrer le prénom';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 30.0),
                TextFormField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      icon: const Icon(
                        Icons.email,
                        color: Colors.white,
                      ),
                      hintText: 'Email du collègue',
                      labelText: 'Email'),
                  controller: mail,
                  cursorColor: Colors.black,
                  style: TextStyle(color: Colors.black),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Entrer le mail';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 30.0),
                TextFormField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      icon: const Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                      hintText: 'Téléphone du collègue',
                      labelText: 'Téléphone'),
                  controller: phone,
                  cursorColor: Colors.black,
                  style: TextStyle(color: Colors.black),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Entrer le téléphone';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 30.0),
                TextFormField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      icon: const Icon(
                        Icons.work,
                        color: Colors.white,
                      ),
                      hintText: 'Fonction du collègue',
                      labelText: 'Fonction'),
                  controller: function,
                  cursorColor: Colors.black,
                  style: TextStyle(color: Colors.black),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Entrer la fonction';
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Center(
                    child: RaisedButton(
                      onPressed: () {
                        // Validate returns true if the form is valid
                        if (_formKey.currentState.validate()) {
                          // If the form is valid, call the updateColleague method to update the colleague
                          updateColleague(nom, prenom, mail, phone, function);
                        }
                      },
                      child: Text('Modifier'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
