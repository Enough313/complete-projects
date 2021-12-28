import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


import '../data_model.dart';
import 'category_page.dart';
import 'item_detail_page.dart';


class RentalHome_HomePage extends StatefulWidget {
  const RentalHome_HomePage({Key? key}) : super(key: key);

  @override
  _RentalHome_HomePageState createState() => _RentalHome_HomePageState();
}

class _RentalHome_HomePageState extends State<RentalHome_HomePage> {
  static List<String> name_home = [
    'Home',
    'Hotel',
    'Flat',
    'Home',
    'Hotel',
    'Flat',
  ];

  static List url = [
    'images/home_picture.png',
    'images/hotel_pic.png',
    'images/flat_pic.png',
    'images/home_picture.png',
    'images/hotel_pic.png',
    'images/flat_pic.png',
  ];
  static List<String> near_home_name = [
    'Vacation Home',
    'Open Modren',
    'Vacation Home',
    'Open Modren',
    'Vacation Home',
    'Open Modren',
  ];
  static List near_url = [
    'images/vacation_home.png',
    'images/open_modren_home.png',
    'images/vacation_home.png',
    'images/open_modren_home.png',
    'images/vacation_home.png',
    'images/open_modren_home.png',
  ];
  static List price = [
    '\$1800',
    '\$1900',
    '\$1800',
    '\$1900',
    '\$1800',
    '\$1900',
  ];
  static List<String> description = [
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
        'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,'
        'It has survived not only five centuries,',
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
        'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,'
        ' It has survived not only five centuries,',
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
        'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,'
        'It has survived not only five centuries,',
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
        'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,'
        'It has survived not only five centuries,',
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
        'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,'
        'It has survived not only five centuries,',
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
        'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,'
        'It has survived not only five centuries,',
  ];
  final List<MenuDataModel> itemData = List.generate(
      name_home.length,
          (index) => MenuDataModel('${name_home[index]}', '${url[index]}','${near_url[index]}',
          '${near_home_name[index]}','${price[index]}','${description[index]}' )
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(toolbarHeight: 0,),
        body: Container(

            height: 550,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: const [
                      Icon(Icons.location_on),
                      Text('Manchester,Uk'),
                      Padding(
                        padding: EdgeInsets.only(left: 200),
                        child: Icon(Icons.notification_add_rounded),
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: Text('Find Your',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: Text('best Rentel House',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                ),

                // Code for Search
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: TextField(
                        textAlignVertical: TextAlignVertical.bottom,
                        decoration: InputDecoration(
                            hintStyle: TextStyle(color: Color(0xffD0D4DD),),
                            prefixIcon: Icon(Icons.search),
                            hintText: 'Search ',
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10)
                            )
                        )
                    ),
                  ),
                ),

                // code for category
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Category',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

                ),

                // Code for list view

                SizedBox(height: 75, width: double.infinity,child:

                ListView.builder(

                    scrollDirection: Axis.horizontal,
                    itemCount: name_home.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            height: 70,
                            width: 200,

                            child: Card(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ListTile(
                                    onTap: () {
                                      SnackBar snackBar =
                                      SnackBar(content: Text("Tapped : ${index + 1}"));

                                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                    },
                                    title: Text(itemData[index].name),
                                    leading: Image.asset(itemData[index].imageurl,height: 50,width: 40,),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    }),

                ),


                // row code for near by
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      const Text('Nearby Places',
                        style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      Padding(
                        padding: const EdgeInsets.only(left: 180),
                        child: GestureDetector(
                          child: Text('see more',style: TextStyle(color: Color(0xff88ADE4)),),
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryPage()));
                          },
                        ),
                      ),
                    ],
                  ),
                ),

                // code for listview Size Box
                SizedBox(height: 220, width: double.infinity,child:
                ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: name_home.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            height: 200,
                            width: 200,
                            child: Card(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ListTile(
                                    onTap: () {
                                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ItemDetailPage(data_detail:itemData[index])));
                                      // SnackBar snackBar =
                                      // SnackBar(content: Text("Tapped : ${index + 1}"));
                                      // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                    },
                                    title: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          //  color: Colors.redAccent,
                                          height: 100,width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Colors.black12,
                                            borderRadius:  BorderRadius.circular(15),
                                            image: DecorationImage(

                                                image: AssetImage(itemData[index].near_img_url),
                                                fit: BoxFit.cover
                                            ),
                                          ),

                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(6.0),
                                          child: Text(itemData[index].near_h_name,
                                            style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                        ),


                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
                ),



              ],
            )
        ),

        // code for bottom navigation bar
        bottomNavigationBar: BottomNavigationBar(

          currentIndex: 0, // this will be set when a new tab is tapped
          items: [
            BottomNavigationBarItem(
              backgroundColor: Color(0xff303030),
              icon: new Icon(Icons.home),
              label: 'Home',

            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.camera),
              label: 'Camera',

            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.mail),
              label: 'Messages',

            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',

            )
          ],
        ),
      ),
    );
  }
}
