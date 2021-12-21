import 'package:flutter/material.dart';

import '../data_model.dart';
import 'home_page.dart';
import 'item_detail_page.dart';


class GalleryImgagePage extends StatelessWidget {
  final GalleryDataModel gallery_detail;
  const GalleryImgagePage({Key? key,required this.gallery_detail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius:  BorderRadius.circular(40),
                image: DecorationImage(
                    image: AssetImage(gallery_detail.gallery_img_url),
                    fit: BoxFit.cover
                ),
              ),

            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 40, 0, 0),
                child: Container(

                  child: GestureDetector(
                      child: Icon(Icons.arrow_back),
                      onTap: () {
                        Navigator.pop(context);
                      }
                  ),
                ),
              ),

            )
          ],
        )

      ),
    );
  }
}
