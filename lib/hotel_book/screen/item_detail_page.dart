import 'package:flutter/material.dart';

import '../data_model.dart';

class ItemDetailPage extends StatelessWidget {
  final MenuDataModel data_detail;
  const ItemDetailPage({Key? key,required this.data_detail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              //  color: Colors.redAccent,
              height: 200,width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(data_detail.imageurl),
                    fit: BoxFit.cover
                ),
              ),

            ),

            Container(
              height: 400,width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius:  BorderRadius.circular(30),

              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(data_detail.name,
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 100),
                            child: Text(data_detail.price,
                              style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold,
                                  color: Colors.blue),),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                      child: Row(
                        children: [
                          Text(data_detail.subtitle),
                          const Padding(
                            padding: EdgeInsets.only(left: 90),
                            child: Text('per night'),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Description :'),
                          Text(data_detail.description),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}

