// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:travel_app/models/Destination.dart';
import 'package:travel_app/pages/Detail.dart';

class PopularWidget extends StatelessWidget {
  PopularWidget({
    super.key,
  });
  List<DestinationModel> destinations = [];
  void _getDestination() {
    destinations = DestinationModel.getDestination();
  }

  @override
  Widget build(BuildContext context) {
    _getDestination();
    return Padding(
        padding: const EdgeInsets.only(top: 12, bottom: 32),
        child: SizedBox(
          height: 250,
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return SizedBox(
                width: 32,
              );
            },
            itemCount: destinations.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return PopularCard(
                title: destinations[index].name,
                imageURL: destinations[index].imageURL,
                rating: destinations[index].rating,
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(
                            image: destinations[index].imageURL,
                            title: destinations[index].name),
                      ));
                },
              );
            },
          ),
        ));
  }
}

class PopularCard extends StatelessWidget {
  const PopularCard({
    super.key,
    required this.title,
    required this.imageURL,
    required this.rating,
    required this.ontap,
  });
  final String title;
  final String imageURL;
  final String rating;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Hero(
              tag: imageURL,
              child: Image.asset(
                imageURL,
                height: 240,
                width: 188,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 12),
            width: 188,
            // height: 240,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //nama rating
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 9, vertical: 4),
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff4D5652)),
                          color: Color(0xff4D5652),
                          borderRadius: BorderRadius.circular(59)),
                      child: Text(
                        title,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff4D5652)),
                          color: Color(0xff4D5652),
                          borderRadius: BorderRadius.circular(59)),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Color(0xffD8D138),
                            size: 16,
                          ),
                          Text(
                            rating,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                // SizedBox(width: 50,),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(), padding: EdgeInsets.all(0)),
                  child: Icon(
                    Icons.favorite,
                    color: Color(0xffEC5655),
                    size: 24,
                  ),
                )
                //tombol hati
              ],
            ),
          )
        ],
      ),
    );
  }
}

class PopularTitle extends StatelessWidget {
  const PopularTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Popular',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        InkWell(
          onTap: () {},
          child: Text(
            'See all',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color: Color(0xff176FF2),
            ),
          ),
        ),
      ],
    );
  }
}
