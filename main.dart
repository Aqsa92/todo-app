import 'package:flutter/material.dart';
import 'package:e_commerce/detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
          home: Container(
        child: Todo(),
      ),
    );
  }
}
