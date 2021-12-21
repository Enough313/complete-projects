import 'package:flutter/material.dart';



class CardPage extends StatefulWidget {
  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          backgroundColor:Color(0xff090943),
          title: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text('Payment Details',
            style: TextStyle(color:Colors.white
            ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Icon(Icons.settings),
            ),
          ],
        ),
        body: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(100, 10, 0, 5),
                      child: Text('How whould you like to pay',
                      style: TextStyle(
                        fontSize: 15,color: Colors.black
                      ),),
                    ),
                  ],
                )],
            ),

          // Container for card 1
          Container(
            width: 400,
            height: 200,
            padding: new EdgeInsets.all(10),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Color(0xff090943),
              elevation: 10,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 8, 0, 0),
                    child: Row(
                      children: [
                        Icon(Icons.wifi,
                          color: Colors.white,),
                        Padding(
                          padding: const EdgeInsets.only(left: 230),
                          child: CircleAvatar(
                            backgroundColor: Color(0xff090943),
                            radius: 30,
                            backgroundImage: AssetImage('images/mastercard.png',),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                    child: Row(
                      children: [
                        Text('3546 7532 XXXX 9742',
                          style: TextStyle(color:Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 120),
                          child: Text('PayPak',
                            style: TextStyle(color:Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Text('NAME',
                              style: TextStyle(color:Colors.white,fontSize: 10),),
                            Text('MOBASHIR HUSAIN',
                              style: TextStyle(color:Colors.white,fontSize: 10),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 150),
                          child: Column(
                            children: [
                              Text('VALID THRU',
                                style: TextStyle(color:Colors.white,fontSize: 10),),
                              Text('08/2022',
                                style: TextStyle(color:Colors.white,fontSize: 10),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

               // Contaner for card 2
            Container(
              width: 400,
              height: 200,
              padding: new EdgeInsets.all(10),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.yellow,
                elevation: 10,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 8, 0, 0),
                      child: Row(
                        children: [
                          Icon(Icons.wifi,
                            color: Color(0xff090943),),
                          Padding(
                            padding: const EdgeInsets.only(left: 230),
                            child: CircleAvatar(
                              backgroundColor: Colors.yellow,
                              radius: 30,
                              backgroundImage: AssetImage('images/mastercard.png',),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Row(
                        children: [
                          Text('5198 5412 XXXX 9874',
                            style: TextStyle(color:Color(0xff090943)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 120),
                            child: Text('PayPak ',
                              style: TextStyle(color:Color(0xff090943)),
                            ),
                          ),
                        ],
                      ),
                    ),



                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text('NAME',
                                style: TextStyle(color:Color(0xff090943),fontSize: 10),),
                              Text('MOBASHIR HUSAIN',
                                style: TextStyle(color:Color(0xff090943),fontSize: 10),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 150),
                            child: Column(
                              children: [
                                Text('VALID THRU',
                                  style: TextStyle(color:Color(0xff090943),fontSize: 10),),
                                Text('05/2024',
                                  style: TextStyle(color:Color(0xff090943),fontSize: 10),),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.blue,
                shape: CircleBorder(),
                onSurface: Colors.white,
                backgroundColor: Color(0xff090943),
              ),
              onPressed: null,
              child: Icon(Icons.add),

            )


      ],
        ),
      ),
    );
  }
}


