import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 16),
          backgroundColor: Color(0xffF3F8FE)),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Row(
          children: [
            Icon(
              Icons.search,
              color: Colors.grey[500],
              size: 20,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              'Find things to do',
              style: TextStyle(
                fontSize: 13,
              ),
            )
          ],
        ),
      ),
    );
  }
}
