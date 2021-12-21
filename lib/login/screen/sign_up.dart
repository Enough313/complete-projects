import 'package:enoughmobileui/login/screen/ragister.dart';
import 'package:flutter/material.dart';

import 'sign_in.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      title: 'Sign Up',
      home: Scaffold(
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 40, 0, 0),
                child: Container(

                    child: GestureDetector(
                        child: Icon(Icons.arrow_back),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignInPage()),
                          );
                        }
                    ),
              ),
          ),



              Padding(
                padding: const EdgeInsets.fromLTRB(10, 50, 15, 0),
                child: Text('Create Account',
                  style: TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold
                  ),),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Full Name',
                    hintText: ' Name',
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: ' Email',
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: ' Password',
                  ),
                ),
              ),


              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Confirm Password',
                    hintText: ' Confirm Password',
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 230),
                child: Container(
                  width: 120,
                  child: ElevatedButton(
                    style:  ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.amberAccent)
                          )
                      ),
                      backgroundColor: MaterialStateProperty.all(Colors.amber),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Ragister()),
                      );
                    },
                    child: Row(
                      children: [
                        Text("SIGN UP"),
                        Icon(Icons.forward),

                      ],
                    ),
                  ),
                ),
              ),



              Padding(
                padding: const EdgeInsets.fromLTRB(100, 120, 10, 20),
                child: Row(
                  children: [
                    Text('Already have a account?',
                      style: TextStyle(
                          fontSize: 12, fontWeight: FontWeight.bold
                      ),),


                    GestureDetector(
                        child: Text('Sign In',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffFBB465)
                        ),),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignInPage()),
                          );
                        }
                    )

                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}


