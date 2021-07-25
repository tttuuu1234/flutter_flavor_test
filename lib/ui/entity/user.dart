import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  User(DocumentSnapshot snapShot) {
    id = snapShot.id;
    name = snapShot.data()['name'] as String;
  }

  String id;
  String name;
}
