import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../add_new_product/add_new_home.dart';
import '../delivery_check/delivery_home.dart';
import '../inventory_management/invntory_home.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({Key? key}) : super(key: key);

  @override
  _NavBarWidgetState createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  int _currentIndex = 0;
  final tabs = [
    const AddNewProductPage(),
    const DeliveryPage(),
    const InventoryManagement(),
  ];
  Color? color = const Color(0xFF78fe04);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: Theme.of(context).primaryColor,
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: const FaIcon(FontAwesomeIcons.plus),
            title: Text(
              'Add new',
              style: GoogleFonts.montserrat(
                fontSize: 15,
              ),
            ),
            activeColor: color!,
            inactiveColor: color!,
          ),
          BottomNavyBarItem(
            icon: const FaIcon(FontAwesomeIcons.truckFast),
            title: Text(
              'Orders to Deliver',
              style: GoogleFonts.montserrat(
                fontSize: 15,
              ),
            ),
            activeColor: color!,
            inactiveColor: color!,
          ),
          BottomNavyBarItem(
            icon: const FaIcon(FontAwesomeIcons.appStore),
            title: Text(
              'Your Inventory',
              style: GoogleFonts.montserrat(
                fontSize: 15,
              ),
            ),
            activeColor: color!,
            inactiveColor: color!,
          ),
        ],
        animationDuration: const Duration(milliseconds: 400),
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
