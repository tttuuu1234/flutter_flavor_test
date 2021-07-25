import 'package:flutter/material.dart';
import 'package:flutter_flavor_test/ui/entity/user.dart';
import 'package:flutter_flavor_test/ui/users/users_model.dart';
import 'package:provider/provider.dart';

class UsersScreen extends StatefulWidget {
  UsersScreen({Key key}) : super(key: key);

  @override
  _UsersScreenState createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ユーザー一覧'),
      ),
      body: ChangeNotifierProvider<UsersModel>(
        create: (context) => UsersModel()..fetchUsers(),
        child: Consumer<UsersModel>(builder: (context, model, child) {
          return Center(
            child: ListView.builder(
              itemCount: model.users.length,
              itemBuilder: (context, int index) {
                User user = model.users[index];
                return Text(user.name);
              },
            ),
          );
        }),
      ),
    );
  }
}
