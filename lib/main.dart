
import 'package:enoughmobileui/rental_house/screen/home_page.dart';
import 'package:flutter/material.dart';

import 'card/maincard.dart';
import 'hotel_book/screen/home_page.dart';
import 'login/mainlogin.dart';


void main() {
  runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,

        home: MyappPage(),
      ));
}


class MyappPage extends StatefulWidget {
  const MyappPage({Key? key}) : super(key: key);

  @override
  _MyappPageState createState() => _MyappPageState();
}

class _MyappPageState extends State<MyappPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            Card(
              child: ListTile(
                leading: Text('Log In Project'),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MainLogInPage()));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Text('Card Project'),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyCardPage()));
                },
              ),
            ),

            Card(
              child: ListTile(
                leading: Text('Rental Home Project'),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>RentalHome_HomePage()));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Text('Hotel Book Project'),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Hotel_HomePage()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

