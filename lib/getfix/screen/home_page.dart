import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../ItemDataModel.dart';
import 'get-fix_2.dart';

class GetFixHomePage extends StatefulWidget {
  @override
  _GetFixHomePageState createState() => _GetFixHomePageState();
}

class _GetFixHomePageState extends State<GetFixHomePage> {
  var dropdownValue='Jaipur302019';


  static List<String> itmename=['Bathroom Cleaning','Sofa Cleaning','Room Cleaning'];
  static List url=['images/bathroom_pic.png','images/sofa_pic.png','images/room_pic.png'];
  final List<ItemDataModel> ItemData= List.generate
           (itmename.length,
          (index)
      => ItemDataModel
        ('${itmename[index]}',
          '${url[index]}',
          '${itmename[index]}Desriotion'));



  //  for Slider Bar
  final List<String> ImageList=[
    'images/img1.PNG',
    'images/img1.PNG',
    'images/img1.PNG',
    'images/img1.PNG',
  ];
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
              height: 200,
              width: 500,
              decoration: BoxDecoration(
                  color: Color(0xffFFD700),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)
                   )
              ),
                child: Column(
                children: [
                  // Get fix code
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.sort),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Get',
                          style: TextStyle(
                            fontSize: 25, color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),
                          ),
                        ),
                        const Text('Fix',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(180, 8, 8, 8),
                          child: GestureDetector(
                            child: Icon(Icons.arrow_forward),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Get_Fix_2()),
                                );
                              }

                          ),
                        )
                      ],
                    ),
                  ),

                  // Code For Search
                  Container(
                    height: 40,
                    width: 300,
                      decoration:  BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)
                      ),
                    child: TextField(
                        decoration: InputDecoration(
                          hintStyle: TextStyle(),
                            prefixIcon: Icon(Icons.search),
                            suffixIcon: IconButton(
                              icon: Icon(Icons.clear),
                              onPressed: () {
                                /* Clear the search field */},
                            ),
                            hintText: 'Search for Servise',
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10)
                            )
                        )
                    ),
                  ),

                  // code for Cleaning plambing etc
                  Row(
                    children: [
                      // code for Cleaning
                      Padding(
                        padding: const EdgeInsets.fromLTRB(40, 10, 0, 0),
                        child: GestureDetector(
                            child: Text('Cleaning',
                            style: TextStyle(
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                            ),),
                            onTap: () {
                           Fluttertoast.showToast(
                             msg: "This is Cleaning Short Toast",
                            timeInSecForIosWeb: 1,
                             backgroundColor: Colors.red,
                              textColor: Colors.white,
                              fontSize: 12.0
                               );
                            }
                        ),
                      ),

                      // code for Plumbing
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                        child: GestureDetector(
                            child: Text('Plumbing',
                              style: TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                              ),),
                            onTap: () {
                              Fluttertoast.showToast(
                                  msg: "This is Plumbing Short Toast",
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.red,
                                  textColor: Colors.white,
                                  fontSize: 12.0
                              );
                            }
                        ),
                      ),

                      // code for Painter
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                        child: GestureDetector(
                            child: Text('Painter',
                              style: TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                              ),),
                            onTap: () {
                              Fluttertoast.showToast(
                                  msg: "This is Painter Short Toast",
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.red,
                                  textColor: Colors.white,
                                  fontSize: 12.0
                              );
                            }
                        ),
                      ),

                      // code for Battery
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                        child: GestureDetector(
                            child: const Text('Battery',
                              style: TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                              ),),
                            onTap: () {
                              Fluttertoast.showToast(
                                  msg: "This is Battery Short Toast",
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.red,
                                  textColor: Colors.white,
                                  fontSize: 12.0
                              );
                            }
                        ),
                      ),

                    ],
                  ),

                  // Code for Service Lovation
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Icon(Icons.location_on),
                        ),
                        Text('Service Loaction near -'),

                        // code for DropdownButton
                        DropdownButton<String>(
                          value: dropdownValue,
                          icon: const Icon(Icons.arrow_downward),
                          iconSize: 20,
                          elevation: 16,
                          style: const TextStyle(color: Colors.deepPurple),
                          underline: Container(
                            height: 1,
                            color: Colors.deepPurpleAccent,
                          ),
                          onChanged: (String? newValue) {
                        setState(() {
                        dropdownValue = newValue!;
                        });
                        },
                          items: <String>['Jaipur302019', 'Jaipur3020191', 'Jaipur3020192']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 70,
                width: 300,
                color: Colors.white,
                child: Row(
                  children: [
                    // image gor Hygiene
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        children: const [
                          CircleAvatar(
                            backgroundColor: Color(0xffFF9800),
                            radius: 20,
                            backgroundImage: AssetImage('images/hygiene.png',
                            ),
                          ),
                          Text('Hygiene',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12
                            ),
                          ),
                        ],),
                    ),
                    // Electrical
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        children: const [
                          // image
                          CircleAvatar(
                            backgroundColor: Color(0xffFF9800),
                            radius: 20,
                            backgroundImage: AssetImage('images/electricol.png',
                            ),
                          ),
                          Text('Elecrical',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12
                            ),
                          ),
                        ],),
                    ),
                    //Applainces
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        children: [
                          // image
                          CircleAvatar(
                            backgroundColor: Color(0xffFF9800),
                            radius: 20,
                            backgroundImage: AssetImage('images/appliances.png',
                            ),
                          ),
                          Text('Applainces',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12
                            ),
                          ),
                        ],),
                    ),
                    //Plumbing
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        children: [
                          // image
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 20,
                            backgroundImage: AssetImage('images/plumbing.png',
                            ),
                          ),
                          Text('Plumbing',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12
                            ),
                          ),
                        ],),
                    ),
                    //Ac Repair
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        children: [
                          // image
                          CircleAvatar(
                            backgroundColor: Color(0xffFF9800),
                            radius: 20,
                            backgroundImage: AssetImage('images/acrepair.png',
                            ),
                          ),
                          Text('AC Repair',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12
                            ),
                          ),
                        ],),
                    ),
                  ],
                ),
              ),
            ),

            // Slider
            Container(
              width: 400,
              height: 130,
              child: CarouselSlider(
                options: CarouselOptions(
                  enableInfiniteScroll: false,
                  autoPlay: true
                ),
                  items: ImageList.map((e) => ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.asset(e,
                          width: 400,
                          height: 120,
                          fit: BoxFit.cover,
                        )
                      ],
                    ),
                  )).toList(),
                  ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text('Best Offers',
                    style:TextStyle(
                      fontSize: 15,fontWeight: FontWeight.bold
                  )
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text('Hygienic and single-use products | low contact service',
                      style:TextStyle(
                          fontSize: 10,fontWeight: FontWeight.bold
                      )
                  ),
                ),
              ],
            ),

            // List view

              Container(
                height: 150,
                width: 300,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: itmename.length,
                    itemBuilder: (context,index){
                    return Card(

                  child: Column(

                    children: [
                      Image.asset(ItemData[index].imageurl, height: 120,width: 150,),
                      Text(ItemData[index].name, style: TextStyle(
                       fontSize: 10
                         ),),

                    ],
                  )

                    );
                    }
                ),
              ),



          ],
        ),
      ),
    );
  }
}


