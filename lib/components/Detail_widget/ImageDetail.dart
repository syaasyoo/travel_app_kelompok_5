// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ImageDetailWidget extends StatelessWidget {
  const ImageDetailWidget({
    super.key,
    required this.detailImage,
  });
  final String detailImage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 3,
              blurRadius: 10,
              offset: Offset(0, 3),
            ),
          ],
          // color: Colors.amber,
        ),
        height: 370,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Hero(
                      tag: detailImage,
                      child: Image.asset(
                        detailImage,
                        fit: BoxFit.fill,
                      ),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    minimumSize: Size(40, 40)),
                child: Icon(
                  Icons.arrow_back_ios_new,
                  size: 20,
                  color: Color(0xffB8B8B8),
                ),
              ),
            ),
            Positioned(
              bottom: BorderSide.strokeAlignCenter,
              right: BorderSide.strokeAlignCenter + 15,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(10),
                ),
                child: Icon(
                  Icons.favorite,
                  color: Color(0xffEC5655),
                  size: 32,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
