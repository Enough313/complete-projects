import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data_model.dart';
import 'all_category.dart';
import 'item_detail_page.dart';

class Hotel_HomePage extends StatefulWidget {
  const Hotel_HomePage({Key? key}) : super(key: key);

  @override
  _Hotel_HomePageState createState() => _Hotel_HomePageState();
}

class _Hotel_HomePageState extends State<Hotel_HomePage> {
  static List<String> itemname = [
    'Gloria Type A',
    'Libs Style Malang',
    'Gloria Type A',
    'Libs Style Malang',
    'Gloria Type A',
    'Libs Style Malang',
  ];
  static List<String> subtitle = [
    'sukun Kota Malang ',
    'klogen Kota Malang ',
    'sukun Kota Malang  ',
    'klogen Kota Malang ',
    'sukun Kota Malang  ',
    'klogen Kota Malang  ',
  ];

  static List<IconData> iconu = [
    Icons.wifi,
    Icons.spa,
    Icons.wifi,
    Icons.spa,
    Icons.wifi,
    Icons.spa,];

  static List<String> iconu_name = [
    'WiFi',
    'Spa',
    'sukun Kota Malang',
    'klogen Kota Malang',
    'sukun Kota Malang',
    'klogen Kota Malang',
  ];

  static List<IconData> icond = [
    Icons.ac_unit,
    Icons.free_breakfast,
    Icons.ac_unit,
    Icons.free_breakfast,
    Icons.ac_unit,
    Icons.free_breakfast,];
  static List<String> icond_name = [
    'AC',
    'klogen Kota Malang',
    'sukun Kota Malang',
    'klogen Kota Malang',
    'sukun Kota Malang',
    'klogen Kota Malang',
  ];

  static List url = [
    'images/room_pic1.png',
    'images/room_pic2.png',
    'images/room_pic3.png',
    'images/room_pic1.png',
    'images/room_pic2.png',
    'images/room_pic3.png'
  ];
  static List<String> price = [
    '\$ 89',
    '\$ 90',
    '\$ 89',
    '\$ 89',
    '\$ 89',
    '\$ 90',
  ];
  static List<String> description = [
    'Description : '
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
        'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,'
        'when an unknown printer took a galley of type and scrambled it to make a type specimen book.'
        'It has survived not only five centuries,',
    'Description : '
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
        'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,'
        ' when an unknown printer took a galley of type and scrambled it to make a type specimen book.'
        ' It has survived not only five centuries,',
    'Description : '
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
        'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,'
        'when an unknown printer took a galley of type and scrambled it to make a type specimen book.'
        'It has survived not only five centuries,',
    'Description : '
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
        'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,'
        'when an unknown printer took a galley of type and scrambled it to make a type specimen book.'
        'It has survived not only five centuries,',
    'Description : '
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
        'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,'
        'when an unknown printer took a galley of type and scrambled it to make a type specimen book.'
        'It has survived not only five centuries,',
    'Description : '
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
        'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,'
        'when an unknown printer took a galley of type and scrambled it to make a type specimen book.'
        'It has survived not only five centuries,',
  ];
  final List<MenuDataModel> itemData = List.generate(
      itemname.length,
          (index) => MenuDataModel(itemname[index], '${url[index]}',
          subtitle[index],icond[index],iconu[index],
              iconu_name[index],icond_name[index],'${price[index]}','${description[index]}')
  );

  var dropdownValue='Indonesia';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(toolbarHeight: 0,),
        body: Container(
          child: Column(
            children: [

              // row for picture
             Padding(
               padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
               child: Row(
                 children: const [
                   Text('Hi,Edward',
                     style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                   Padding(
                     padding: EdgeInsets.only(left: 220),
                     child: CircleAvatar(
                       radius: 20,
                       backgroundImage: AssetImage('images/mobashir.png'),
                     ),
                   )
                 ],
               ),
             ),
              // row for location
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                child: Row(
                  children: [
                    Text('Location:'),
                    DropdownButton<String>(
                      value: dropdownValue,
                      icon: const Icon(Icons.arrow_drop_down_outlined),
                      iconSize: 20,
                      elevation: 16,
                      style: const TextStyle(color: Colors.deepPurple),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                      items: <String>['Indonesia', 'Japan', 'Chaina']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              Container(
                height: 40,
                width: 300,
                decoration:  BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: TextField(
                  textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                        hintStyle: TextStyle(color: Color(0xffD0D4DD),),
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Need Something ?',
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10)
                        )
                    )
                ),
              ),


              // Row for see All
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Text('Category',
                      style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),),
                    Padding(
                      padding: const EdgeInsets.only(left: 230),
                      child: GestureDetector(
                          child: const Text('See All',style: TextStyle(
                            color: Color(0xffFEE18A),decoration: TextDecoration.underline,
                          ),),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                 builder: (context) => AllCategory()),
                            );
                          }
                      ),
                    ),
                  ],
                ),
              ),


              // row for card
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                Container(
                  height: 100,
                  width: 80,
                  decoration:  BoxDecoration(
                      color: Color(0xffEFEBF9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                       child: Padding(
                         padding: const EdgeInsets.fromLTRB(8, 25, 8, 8),
                         child: Column(
                           children: const [
                             Icon(Icons.sensor_door,color: Color(0xff5B41C8),),
                             Padding(
                               padding: EdgeInsets.only(top: 10),
                               child: Text('Room',
                                 style: TextStyle(color: Color(0xff5B41C8))
                               ),
                             )
                           ],
                         ),
                       ),

                ),



                    SizedBox(width: 5,),
                    Container(
                      height: 100,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Color(0xffEFEBF9),
                          borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8, 25, 8, 8),
                        child: Column(
                          children: const [
                            Icon(Icons.vertical_split,color: Color(0xff5B41C8)),
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text('Apt',
                                  style: TextStyle(color: Color(0xff5B41C8))),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 5,),
                    Container(
                      height: 100,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Color(0xffEFEBF9),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8, 25, 8, 8),
                        child: Column(
                          children: const [
                           Icon(Icons.hotel,color: Color(0xff5B41C8)),
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text('Hotel',
                                  style: TextStyle(color: Color(0xff5B41C8))),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 5,),
                    Container(
                      height: 100,
                      width: 80,
                      decoration:  BoxDecoration(
                          color: Color(0xffEFEBF9),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8, 25, 8, 8),
                        child: Column(
                          children: const [
                           Icon(Icons.villa,color: Color(0xff5B41C8)),
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text('Villa',
                                  style: TextStyle(color: Color(0xff5B41C8))),
                            )
                          ],
                        ),
                      ),
                    ),

                 ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Text('Nearby you',
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      )),
                    Padding(
                      padding: const EdgeInsets.only(left: 220),
                      child: GestureDetector(
                          child: const
                          Text('See All',style: TextStyle(
                             color: Color(0xffFEE18A),
                            decoration: TextDecoration.underline,
                          ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AllCategory()),
                            );
                          }
                      ),
                    ),
                  ],
                ),
              ),

              // code for listview Size Box
              SizedBox(height: 260, width: double.infinity,child:
              ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: itemname.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 250,
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
                                        height: 90,width: double.infinity,
                                          decoration: BoxDecoration(
                                              borderRadius:  BorderRadius.circular(15),
                                            image: DecorationImage(
                                              image: AssetImage(itemData[index].imageurl),
                                              fit: BoxFit.cover
                                            ),
                                          ),

                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Text(itemData[index].name,
                                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Text(itemData[index].subtitle,style:
                                        TextStyle(fontSize: 10,color: Color(0xffBFC5D0)),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Row(
                                          children: [
                                            Icon(iconu[index],size: 20,color: Color(0xffD0D5DC),),
                                            Text(itemData[index].iconu_name,style:
                                            TextStyle(fontSize: 10,color: Color(0xffD0D5DC),),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Row(
                                          children: [
                                            Icon(icond[index],size: 20,color: Color(0xffD0D5DC),),
                                            Text(itemData[index].icond_name,style:
                                            TextStyle(fontSize: 10,color: Color(0xffD0D5DC),),),
                                          ],
                                        ),
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
          ),
        ),
      ),
    );
  }
}
