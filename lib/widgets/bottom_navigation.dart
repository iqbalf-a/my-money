import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:my_money/pages/home_page.dart';
import 'package:my_money/pages/report_page.dart';
import 'package:my_money/theme.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Report(),
    Text(
      'Halaman Pengaturan',
      style: TextStyle(fontSize: 16, fontFamily: 'Poppins'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(bottom: 30, left: 30, right: 30),
        decoration: BoxDecoration(
          color: Colors.transparent,
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: b5,
              hoverColor: b2,
              tabBorderRadius: 20,
              gap: 8,
              activeColor: b3,
              iconSize: 20,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 900),
              tabBackgroundColor: b1_50,
              color: b5,
              tabs: [
                GButton(
                  icon: LineIcons.home,
                  text: 'Beranda',
                  textStyle: m12blue,
                ),
                GButton(
                  icon: LineIcons.lineChart,
                  text: 'Laporan',
                  textStyle: m12blue,
                ),
                GButton(
                  icon: LineIcons.cog,
                  text: 'Pengaturan',
                  textStyle: m12blue,
                ),
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
