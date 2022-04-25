import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'screens/task_home_screen.dart';
import 'my_home_app.dart';

// /*First tut
void main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: MyTutHome(),
      home: TaskHomeScreen(),
    );
  }
}
