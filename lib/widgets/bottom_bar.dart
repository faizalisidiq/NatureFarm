import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
      style: TabStyle.react,
      items: [
        TabItem(icon: Icons.home, title: 'Home'),
        TabItem(icon: Icons.person, title: 'Profile'),
      ],
      backgroundColor: const Color(0xFF224D31),
      onTap: (int i) => print('click index=$i'),
    );
  }
}
