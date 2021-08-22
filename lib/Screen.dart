import 'package:app1/models/Users.dart';
import 'package:app1/services/UserService.dart';
import 'package:app1/userDetails.dart';
import 'package:flutter/material.dart';
import 'Utils.dart';

class UsersScreen extends StatefulWidget {
  @override
  _UsersScreenState createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  bool loading = true;
  List<User> users = [];

  getUserList() async {
    users = (await UserService().getUsers()).cast<User>();
    loading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getUserList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Users Screen"),
      ),
      body: loading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: users.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
                onTap: () {
                  push(context, UserDetails(users[index]));
                },
                child: Card(child:Container(child:Text( "${users[index].name}")))),);

        },
      ),
    );
  }
}
