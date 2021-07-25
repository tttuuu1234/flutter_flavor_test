import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_flavor_test/ui/entity/user.dart';

class UsersModel extends ChangeNotifier {
  final CollectionReference _usersCollection =
      FirebaseFirestore.instance.collection('users');

  List users = <User>[];

  Future<void> fetchUsers() async {
    final results = await _usersCollection.get();
    users = results.docs
        .map(
          (doc) => User(doc),
        )
        .toList();

    notifyListeners();
  }
}
