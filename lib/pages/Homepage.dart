// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:travel_app/components/Homepage_Widget/CategoryWidget.dart';
import 'package:travel_app/components/Homepage_Widget/PopularWidget.dart';
import 'package:travel_app/components/Homepage_Widget/RecommendedWidget.dart';
import 'package:travel_app/components/Homepage_Widget/SearchBar.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            MySearchBar(),
            CategoryWidget(),
            PopularTitle(),
            PopularWidget(),
            RecommendedTitle(),
            RecommendedWidget(),
          ],
        ),
      ),
    );
  }
}

PreferredSize myAppBar() {
  return PreferredSize(
    preferredSize: Size.fromHeight(86),
    child: SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Explore",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                Text(
                  'Aspen',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            InkWell(
              onTap: () {},
              child: Row(
                children: [
                  Icon(
                    Icons.location_on,
                    size: 16,
                    color: Color(0xFF176FF2),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    'Aspen, USA',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_sharp,
                    size: 16,
                    color: Color(0xFF176FF2),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}
