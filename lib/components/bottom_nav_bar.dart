import 'package:coffee_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  void Function(int) onTabChange;
  BottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30),
      child: GNav(
        onTabChange: (value) => onTabChange(value),
        color: Colors.grey[400], // 비활성화 폰트 색상
        activeColor: Colors.grey[700], // 활성화 폰트 색상
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Order',
          ),
          GButton(
            icon: Icons.shopping_bag_outlined,
            text: 'Cart',
          ),
        ],
      ),
    );
  }
}
