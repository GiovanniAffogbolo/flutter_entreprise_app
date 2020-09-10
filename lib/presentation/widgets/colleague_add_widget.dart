import 'package:flutter/material.dart';

class AddColleagueWidget extends StatefulWidget {
  @override
  _AddColleagueWidgetState createState() => _AddColleagueWidgetState();
}

class _AddColleagueWidgetState extends State<AddColleagueWidget> {
  void save(nom, prenom, mail, phone, function) {
    Navigator.pop(context, {
      'nom': nom.text,
      'prenom': prenom.text,
      'mail': mail.text,
      'phone': phone.text,
      'function': function.text,
    });
  }

  TextEditingController nom = TextEditingController();
  TextEditingController prenom = TextEditingController();
  TextEditingController mail = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController function = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
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
                          // If the form is valid, call the save method to save the colleague
                          save(nom, prenom, mail, phone, function);
                        }
                      },
                      child: Text('Ajouter'),
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
