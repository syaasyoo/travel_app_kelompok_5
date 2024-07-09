// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final List<ElevatedButton> myCategories = [
    ElevatedButton(
      // autofocus: true,
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          backgroundColor: Color.fromRGBO(23, 111, 242, 0.11),
          elevation: 0),
      onPressed: () {},
      child: Text(
        'Location',
        style: TextStyle(color: Color(0xff176FF2), fontWeight: FontWeight.bold),
      ),
    ),
    ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        elevation: 0,
      ),
      onPressed: () {},
      child: Text(
        'Hotels',
        style: TextStyle(color: Color(0xffB8B8B8)),
      ),
    ),
    ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        elevation: 0,
      ),
      onPressed: () {},
      child: Text(
        'Food',
        style: TextStyle(color: Color(0xffB8B8B8)),
      ),
    ),
    ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        elevation: 0,
      ),
      onPressed: () {},
      child: Text(
        'Adventure',
        style: TextStyle(color: Color(0xffB8B8B8)),
      ),
    ),
    ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          elevation: 0,
        ),
        onPressed: () {},
        child: Text(
          'Adventure',
          style: TextStyle(color: Color(0xffB8B8B8)),
        )),
  ];

  CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: SizedBox(
        height: 41,
        child: ListView.builder(
          itemCount: myCategories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              child: myCategories[index],
            );
          },
        ),
      ),
    );
  }
}
