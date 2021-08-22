import 'package:flutter/material.dart';
import 'package:app1/Models/Users.dart';
import 'package:flutter/cupertino.dart';
import 'package:app1/Screen.dart';
void main()=> runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp( debugShowCheckedModeBanner:false, home:UsersScreen() ,


    );

  }


}

