import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CurvedBar extends StatelessWidget {
  const CurvedBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      color: Colors.purple.shade800,
      animationDuration: const Duration(milliseconds: 400),
      backgroundColor: Colors.purple.shade200,
      onTap: (index) {
        // Handle the Navigation here
      },
      items: const [
        Icon(
          Icons.home,
          color: Colors.white,
        ),
        Icon(
          Icons.favorite,
          color: Colors.white,
        ),
        Icon(
          Icons.search,
          color: Colors.white,
        ),
        Icon(
          Icons.settings,
          color: Colors.white,
        ),
      ],
    );
  }
}
