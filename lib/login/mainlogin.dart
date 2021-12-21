import 'package:enoughmobileui/login/screen/sign_in.dart';
import 'package:flutter/material.dart';

class MainLogInPage extends StatefulWidget {
  const MainLogInPage({Key? key}) : super(key: key);

  @override
  _MainLogInPageState createState() => _MainLogInPageState();
}

class _MainLogInPageState extends State<MainLogInPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:SignInPage (),
    );
  }
}


