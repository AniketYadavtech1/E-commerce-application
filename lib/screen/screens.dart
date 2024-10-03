import 'package:ecommerce_appwith_rest_api/screen/cart_screen.dart';
import 'package:ecommerce_appwith_rest_api/screen/home_screen.dart';
import 'package:ecommerce_appwith_rest_api/screen/wishlist_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class Screens extends StatefulWidget {
  const Screens({super.key});

  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  int _selectedIndex = 0;

  static List<Widget> _widgetoptions = <Widget>[
    HomeScreen(),
    CartScreen(),
    WishlistScreen(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _widgetoptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(0.1),
            ),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.white,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: Colors.redAccent,
              color: Colors.black,
              tabs: const [
                GButton(icon: LineIcons.home, text: 'Home'),
                GButton(icon: LineIcons.shoppingBag, text: 'Cart'),
                GButton(icon: LineIcons.heart, text: 'Wishlist'),
                GButton(icon: LineIcons.user, text: 'Account'),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
