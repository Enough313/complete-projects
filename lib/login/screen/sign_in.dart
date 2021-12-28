import 'package:enoughmobileui/login/screen/ragister.dart';
import 'package:enoughmobileui/login/screen/sign_up.dart';
import 'package:flutter/material.dart';


class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}
class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Text for Login
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 150, 15, 0),
                child: Text('Login',
                  style: TextStyle(fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
              // Text Please sign in to continue
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 15),
                child: Text('Please sign in to continue',
                  style: TextStyle(
                    fontSize: 15, fontWeight: FontWeight.bold,
                    color: Color(0xffC2C1C1),
                  ),),
              ),
              //TextField for Email
              const Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText : ' Email',
                  ),
                ),
              ),
              //TextField for Password
              const Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: ' Password',
                  ),
                ),
              ),
              //ElevatedButton for Login
              Padding(
                padding: const EdgeInsets.only(left: 250),
                child: Container(
                  width: 100,
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
                      children: const [
                        Text("LOGIN"),
                        Icon(Icons.forward),
                      ],
                    ),
                  ),
                ),
              ),

              // Text for  Dont have an account
              Padding(
                padding: const EdgeInsets.fromLTRB(100, 150, 10, 20),
                child: Row(
                  children: [
                    const Text('Dont have an account?',
                      style: TextStyle(
                          fontSize: 12, fontWeight: FontWeight.bold
                      ),),

                    // GestureDetector for sign up
                    GestureDetector(
                        child: const Text('Sign up',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffFBB465)
                          ),),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUp()),
                          );
                        }
                    )
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}







