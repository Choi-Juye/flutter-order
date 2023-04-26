import 'package:coffee_app/components/bottom_nav_bar.dart';
import 'package:coffee_app/constants/colors.dart';
import 'package:coffee_app/screens/cart.dart';
import 'package:coffee_app/screens/order.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
// navigation bottom bar
  int _selectedIndex = 0;
  void navigationBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

// screens
  final List<Widget> _screens = [
    // shop
    Order(),

    // cart
    Cart(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigationBottomBar(index),
      ),
      body: _screens[_selectedIndex],
    );
  }
}
