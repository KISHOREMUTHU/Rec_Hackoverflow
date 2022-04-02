import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rec_hackoverflow/record_storage/record_storage_provider.dart';

import '../chatbot/start.dart';
import '../home_page.dart';
import '../news_app/screens/news_page.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({Key? key}) : super(key: key);

  @override
  _NavBarWidgetState createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  int _currentIndex = 0;
  final tabs = [
    const HomePage(),
    RecordStorage(),
    MyChat(),
    const HealthNewsPage()
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
            icon: const FaIcon(FontAwesomeIcons.house),
            title: Text(
              'Home',
              style: GoogleFonts.montserrat(
                fontSize: 15,
              ),
            ),
            activeColor: color!,
            inactiveColor: color!,
          ),
          BottomNavyBarItem(
            icon: const FaIcon(FontAwesomeIcons.recordVinyl),
            title: Text(
              'Records',
              style: GoogleFonts.montserrat(
                fontSize: 15,
              ),
            ),
            activeColor: color!,
            inactiveColor: color!,
          ),
          BottomNavyBarItem(
            icon: const FaIcon(FontAwesomeIcons.robot),
            title: Text(
              'ChatBot',
              style: GoogleFonts.montserrat(
                fontSize: 15,
              ),
            ),
            activeColor: color!,
            inactiveColor: color!,
          ),
          BottomNavyBarItem(
            icon: const FaIcon(FontAwesomeIcons.newspaper),
            title: Text(
              'News',
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
