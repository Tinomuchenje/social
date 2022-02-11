import 'package:flutter/material.dart';

import 'registration.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Registration(),
    );
  }
}
