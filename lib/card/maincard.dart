
import 'package:enoughmobileui/card/screen/main.dart';
import 'package:flutter/material.dart';

class MyCardPage extends StatefulWidget {
  const MyCardPage({Key? key}) : super(key: key);

  @override
  _MyCardPageState createState() => _MyCardPageState();
}

class _MyCardPageState extends State<MyCardPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:CardPage  (),
    );
  }
}