import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:like_button/like_button.dart';
import 'package:paws/pages/Homepage/home.dart';
import 'package:paws/pages/Homepage/profile.dart';
import 'package:paws/pages/Homepage/search.dart';
import 'package:paws/themes/themes.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedindex = 0;

  void _onItemTapped(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  List pages = [
    const Home(),
    const search(),
    const profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            "Paws",
            style: GoogleFonts.notoSerifDisplay(
                fontSize: 35,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w900),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: grey,
              ),
              
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.heart_broken_rounded,
                color: grey,
              ),
              label: 'Liked',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: grey,
              ),
              label: 'Profile',
            ),
          ],
          backgroundColor: black,
          type: BottomNavigationBarType.shifting,
          currentIndex: selectedindex,
          selectedItemColor: black,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 2),
      body: pages[selectedindex],
    );
  }
}
