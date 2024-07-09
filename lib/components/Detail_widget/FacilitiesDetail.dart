import 'package:flutter/material.dart';

class FacilitiesTitle extends StatelessWidget {
  const FacilitiesTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        'Facilities',
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
      ),
    );
  }
}

class FacilitiesCard extends StatelessWidget {
  const FacilitiesCard({
    super.key,
    required this.title,
    required this.icons,
  });
  final String title;
  final Icon icons;

  @override
  Widget build(BuildContext context) {
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    return Container(
      width: mediaQueryWidth / 4 - 15,
      // padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color.fromRGBO(23, 111, 242, 0.05)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            icons,
            SizedBox(
              height: 5,
            ),
            Text(
              title,
              style: TextStyle(color: Color(0xffB8B8B8)),
            ),
          ],
        ),
      ),
    );
  }
}

class FacilitiesLists extends StatelessWidget {
  const FacilitiesLists({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FacilitiesCard(
            title: '1 Heater',
            icons: Icon(Icons.wifi, color: Color(0xffB8B8B8)),
          ),
          FacilitiesCard(
              title: 'Dinner',
              icons:
                  Icon(Icons.local_dining_rounded, color: Color(0xffB8B8B8))),
          FacilitiesCard(
              title: '1 Tub',
              icons: Icon(
                Icons.bathtub,
                color: Color(0xffB8B8B8),
              )),
          FacilitiesCard(
            title: 'Pool',
            icons: Icon(
              Icons.pool,
              color: Color(0xffB8B8B8),
            ),
          ),
        ],
      ),
    );
  }
}
