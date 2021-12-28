import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../data_model.dart';

import 'gallery_img_page.dart';
class ItemDetailPage extends StatefulWidget {

  MenuDataModel data_detail;
  ItemDetailPage({Key? key, required this.data_detail}) : super(key: key);

  @override
  State<ItemDetailPage> createState() => _ItemDetailPageState();
}

class _ItemDetailPageState extends State<ItemDetailPage> {
  var rating = 3.0;

  static List gallery_img = [
    'images/room_gallery_pic.png',
    'images/kitchen_gallery_pic.png',
    'images/courtyard_home_pic.png',
    'images/bathroom_home_pic.png',
  ];

  @override
  Widget build(BuildContext context) {
    final List<GalleryDataModel> itemData = List.generate(gallery_img.length,
            (index) => GalleryDataModel('${gallery_img[index]}'));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            borderRadius:  BorderRadius.circular(30),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                //  color: Colors.redAccent,
                height: 200,width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius:  BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage(widget.data_detail.near_img_url),
                      fit: BoxFit.cover
                  ),
                ),

              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 8, 6),
                child: Container(
                  height: 80,width: 320,
                  decoration: BoxDecoration(
                    color: Color(0xff454545),
                    borderRadius:  BorderRadius.circular(30),

                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(widget.data_detail.near_h_name,
                              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 100),
                              child: Text(widget.data_detail.price_h,
                                style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white) ,),
                            )

                          ],
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Text('Rating:',style: TextStyle(color: Colors.white),),
                              SmoothStarRating(
                                rating: rating,
                                isReadOnly: false,
                                size: 15,
                                color: Colors.amber,
                                borderColor: Colors.amber,
                                filledIconData: Icons.star,
                                halfFilledIconData: Icons.star_half,
                                defaultIconData: Icons.star_border,
                                starCount: 5,
                                allowHalfRating: true,
                                spacing: 2.0,
                                onRated: (value) {
                                  print("rating value -> $value");
                                  // print("rating value dd -> ${value.truncate()}");
                                },
                              ),

                              const Padding(
                                padding: EdgeInsets.only(left: 100),
                                child: Text('/month',style: TextStyle(color: Colors.white),),
                              )
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),




              // code for gallery image
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Gallery',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),

                    SizedBox(height: 100, width: double.infinity,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: gallery_img.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  height: 70,
                                  width: 83,
                                  child: Card(
                                      child: Stack(
                                        children: [
                                          Image.asset(itemData[index].gallery_img_url,
                                            fit: BoxFit.cover,width: 65,),
                                          ListTile(
                                            onTap: () {
                                              Navigator.of(context).push(MaterialPageRoute
                                                (builder: (context)=>GalleryImgagePage(gallery_detail: itemData[index],)));
                                            },

                                          ),

                                        ],
                                      )

                                  ),
                                ),
                              ],
                            );
                          }),

                    ),
                  ],
                ),
              ),

              // code for Descriptin
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Description :',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(widget.data_detail.descrp,style: TextStyle( height: 1.5),),
                    )
                  ],
                ),
              ),


//ElevatedButton for Login
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    // code for Live Your
                    Container(
                      width: 100,
                      height: 50,
                      child: ElevatedButton(
                        style:  ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  side: BorderSide(color: Color(0xffEEF4FC))
                              )
                          ),
                          backgroundColor: MaterialStateProperty.all(Color(0xffEEF4FC)),
                        ),

                        onPressed: ()   {
                          Fluttertoast.showToast(
                              msg: "This is Live Tour Toast",
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.red,
                              textColor: Colors.white,
                              fontSize: 12.0
                          );
                        },
                        child: Text("Live Tour",style: TextStyle(
                            color: Colors.black
                        ),),
                      ),
                    ),

                    // code for Live Your
                    Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Container(
                        width: 150,
                        height: 50,
                        child: ElevatedButton(
                          style:  ButtonStyle(
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Color(0xff588DDE))
                                )
                            ),
                            backgroundColor: MaterialStateProperty.all(Color(0xff588DDE)),
                          ),

                          onPressed: ()   {
                            Fluttertoast.showToast(
                                msg: "This is Book Now Short Toast",
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 12.0
                            );
                          },
                          child: Text("Book Now"),
                        ),
                      ),
                    ),
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

