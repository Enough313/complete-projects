import 'package:flutter/material.dart';

class Get_Fix_2 extends StatefulWidget {
  @override
  _Get_Fix_2State createState() => _Get_Fix_2State();
}

class _Get_Fix_2State extends State<Get_Fix_2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:  PreferredSize(
            preferredSize: Size.fromHeight(0),
            child: AppBar(
                backgroundColor:Color(0xffFFD700)
            )
        ),
        body: Column(
          children: [
           Container(
             height: 380,
             width: 500,
             color: Color(0xffFFD700),
             child: Column(
               children: [
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Row(
                     children: [
                       Icon(Icons.sort),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text('Get',
                           style: TextStyle(
                               fontSize: 25, color: Colors.white,
                               fontWeight: FontWeight.bold
                           ),
                         ),
                       ),
                       Text('Fix',
                         style: TextStyle(
                             fontSize: 20,
                             fontWeight: FontWeight.bold
                         ),),
                     ],
                   ),
                 ),
                 // row for text hi choos
                 Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.fromLTRB(30, 30, 10, 0),
                       child: Text('Hi ! Choose',
                       style: TextStyle(
                         color: Colors.white, fontWeight: FontWeight.bold,
                         fontSize: 20
                       ),
                       ),
                     ),
                   ],
                 ),
                 // row for your servise
                 Padding(
                   padding: const EdgeInsets.fromLTRB(30, 10, 10, 0),
                   child: Row(
                     children: [
                       Text('Your',
                         style: TextStyle(
                             color: Colors.white,fontWeight: FontWeight.bold,
                           fontSize: 20
                         ),),
                       Padding(
                         padding: const EdgeInsets.only(left: 5),
                         child: Text('Service Area',
                           style: TextStyle(
                               fontWeight: FontWeight.bold,fontSize: 20
                           ),),
                       )
                     ],
                   ),
                 ),

                 // row for card images
                 Row(
                   // Contaner for pic 1
                   children: [
                     Padding(
                       padding: const EdgeInsets.fromLTRB(20, 10, 10, 0),
                       child: Container(
                         height: 200,
                         width: 150,
                         decoration: BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.only(
                               bottomLeft: Radius.circular(10),
                               bottomRight: Radius.circular(10),
                               topLeft: Radius.circular(10),
                               topRight: Radius.circular(10),
                             )
                         ),
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.adjust_rounded),
                                    ],
                                  ),
                                  Image.asset('images/business_pic.PNG'),
                                  Text('Business',
                                  style: TextStyle(
                                    color:Color(0xffFFD700)
                                  ),),
                                  Text('Organisation'),
                                ],
                              ),

                            ],
                          ),
                       ),
                     ),

                     // Contaner for pic 2
                     Padding(
                       padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                       child: Container(
                         height: 200,
                         width: 150,
                         decoration: BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.only(
                               bottomLeft: Radius.circular(10),
                               bottomRight: Radius.circular(10),
                               topLeft: Radius.circular(10),
                               topRight: Radius.circular(10),
                             )
                         ),
                         child: Column(
                           children: [
                             Column(
                               children: [
                                 Row(
                                   children: [
                                     Icon(Icons.adjust_rounded),
                                   ],
                                 ),
                                 Image.asset('images/home_pic.PNG'),
                                 Text('Home',
                                   style: TextStyle(
                                       color:Color(0xffFFD700)
                                   ),),
                                 Text('Personal'),
                               ],
                             )
                           ],
                       ),
                     ),
                     )
                   ],
                 )


               ],
             ),
           ),


            // part 2 Containr 2
            Container(
              height: 230,
              width: 400,
              decoration: BoxDecoration(
                  color: Color(0xff022C43),
                  borderRadius: BorderRadius.only(

                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )
              ),
              child: Column(
                children: [
                           // textfield for enter service
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40,
                      width: 320,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          )
                      ),
                      child: TextField(
                          decoration: InputDecoration(
                              hintStyle: TextStyle(),
                             // prefixIcon: Icon(Icons.adjust),
                              hintText: 'Enter your location for service ',
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10)
                              )
                          )
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Text('Current Location :',
                          style: TextStyle(
                              color:Color(0xffFFD700)
                          ),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Text('Service location near - Jaipur 302019 ',
                          style: TextStyle(
                              color:Colors.white
                          ),),
                      ],
                    ),
                  ),

                  //code for Later and search now
                  Padding(
                    padding: const EdgeInsets.fromLTRB(60, 60, 10, 0),
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          child: ElevatedButton(
                            style:  ButtonStyle(
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.white)
                                  )),
                              backgroundColor: MaterialStateProperty.all(Color(0xff022C43)),
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Later",),
                              ],),),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: ElevatedButton(
                            style:  ButtonStyle(
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.white)
                                  )),
                              backgroundColor: MaterialStateProperty.all(Color(0xffFFD700)),
                            ),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Text("Search Now"),
                              ],),),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            )


          ],
        ),
      ),
    );
  }
}
