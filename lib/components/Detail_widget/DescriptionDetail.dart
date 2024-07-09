import 'package:flutter/material.dart';

class DescriptionDetailWidget extends StatelessWidget {
  const DescriptionDetailWidget({
    super.key,
    required this.detailTitle,
  });
  final String detailTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //title + show map
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                detailTitle,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'Show map',
                  style: TextStyle(
                      color: Color(0xff176FF2), fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          //rating
          SizedBox(
            height: 6,
          ),
          Row(
            children: [
              Icon(
                Icons.star,
                color: Color(0xffDF9652),
                size: 16,
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                '4.5 (355 Reviews)',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              )
            ],
          ),
          //desc
          SizedBox(
            height: 16,
          ),
          Text(
            'Aspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining shopping and ....',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 9,
          ),
          //readmore
          Row(
            children: [
              InkWell(
                onTap: () {},
                child: Text(
                  'Read more',
                  style: TextStyle(
                      color: Color(0xff176FF2), fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 4,
              ),
              Icon(
                Icons.keyboard_arrow_down_sharp,
                color: Color(0xff176FF2),
              )
            ],
          ),
          SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}
