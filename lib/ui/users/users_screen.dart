import 'package:flutter/material.dart';
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
        create: (context) => UsersModel(),
        child: Center(
          child: Column(
            children: [
              Text('aaa'),
            ],
          ),
        ),
      ),
    );
  }
}
