import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class ModernBar extends StatelessWidget {
  const ModernBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
        child: GNav(
          backgroundColor: Colors.black,
          color: Colors.white,
          activeColor: Colors.white,
          tabBackgroundColor: Colors.grey.shade800,
          gap: 8,
          onTabChange: (index) {
            // Handle the Navigation here
          },
          padding: const EdgeInsets.all(16),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ), // GButton
            GButton(
              icon: Icons.favorite_border,
              text: 'Likes',
            ), // GButton
            GButton(
              icon: Icons.search,
              text: 'Search',
            ), // GButton
            GButton(
              icon: Icons.settings,
              text: 'Settings',
            ), // GButton
          ],
        ),
      ),
    );
  }
}
