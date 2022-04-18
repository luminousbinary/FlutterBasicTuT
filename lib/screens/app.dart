import 'package:flutter/material.dart';
import 'package:chtap/screens/location_detail/location_detail.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LocationDetail(),
    );
  }
}
