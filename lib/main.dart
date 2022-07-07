import 'package:flutter/material.dart';
import 'package:learning_material/homepage.dart';

void main() {
  runApp(const Learning_material());
}

class Learning_material extends StatelessWidget {
  const Learning_material({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Homepage(),
    );
  }
}