// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class RecommendedWidget extends StatelessWidget {
  const RecommendedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 152,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            RecommendedCard(
                title: 'Explore Aspen',
                duration: '4N/5D',
                imageURL: 'assets/images/explore-aspen.png'),
            SizedBox(
              width: 20,
            ),
            RecommendedCard(
                title: 'Luxurious Aspen',
                duration: '2N/3D',
                imageURL: 'assets/images/luxurious-aspen.png'),
          ],
        ),
      ),
    );
  }
}

class RecommendedCard extends StatelessWidget {
  const RecommendedCard({
    super.key,
    required this.title,
    required this.duration,
    required this.imageURL,
  });

  final String title;
  final String duration;
  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 174,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(0xffF4F4F4),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 10,
              offset: Offset(0, 3)),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //gambar
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(imageURL),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 13),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                    decoration: BoxDecoration(
                        color: Color(0xff3A544F),
                        borderRadius: BorderRadius.circular(9),
                        border: Border.all(width: 3, color: Colors.white)),
                    child: Text(
                      duration,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 10,
                      ),
                    ),
                  ),
                )
              ],
            ),
            //desc
            Text(
              title,
              style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff232323),
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 3,
            ),
            Row(
              children: [
                Icon(
                  Icons.trending_up,
                  color: Color(0xff84ABE4),
                  size: 14,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Hot Deal',
                  style: TextStyle(fontSize: 10),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class RecommendedTitle extends StatelessWidget {
  const RecommendedTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Recommended',
      style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 18,
      ),
    );
  }
}
