import 'package:flutter_entreprise_app/features/entreprise_app/data/models/colleague.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final testColleagueModel = Colleague(
      nom: "TEST",
      prenom: "Test",
      mail: "test@gmail.com",
      telephone: "0707070707",
      fonction: "test");

  test(
    'should be an instance of Colleague model',
    () async {
      expect(testColleagueModel, isA<Colleague>());
    },
  );
}
