import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:epic_ecommerce_app/pages/orders.dart';
import 'package:epic_ecommerce_app/pages/home.dart';
import 'package:epic_ecommerce_app/pages/profile.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  late List<Widget> pages;

  late Homepage homepage;
  late profilepage profile;
  late orderpage orders;
  int currentTabIndex = 0;

  @override
  void initState() {
    super.initState();
    homepage = Homepage();
    profile = profilepage();
    orders = orderpage();
    pages = [homepage, orders, profile];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 65,
        backgroundColor: Colors.white,
        color: Colors.black,
        animationDuration: const Duration(milliseconds: 500),
        onTap: (int index) {
          setState(() {
            currentTabIndex = index;
          });
        },
        items: const [
          Icon(
            Icons.home_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.shopping_cart,
            color: Colors.white,
          ),
          Icon(
            Icons.person,
            color: Colors.white,
          ),
        ],
      ),
      body: pages[currentTabIndex],
    );
  }
}
