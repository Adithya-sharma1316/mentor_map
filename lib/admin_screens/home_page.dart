import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'admin_page.dart';
import '../chats/chat_page.dart';
import 'admin_profile_page.dart';

class HomePageAdmin extends StatefulWidget {
  const HomePageAdmin({super.key});

  @override
  State<HomePageAdmin> createState() => _HomePageAdminState();
}

class _HomePageAdminState extends State<HomePageAdmin> {
  final List pages = [
    const AdminPage(),
    const ChatPage(),
    const ProfilePage(),
  ];
  int _selectedIndex = 0;

  void navigatePage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GNav(
          padding: const EdgeInsets.all(20),
          onTabChange: (index) => navigatePage(index),
          mainAxisAlignment: MainAxisAlignment.center,
          iconSize: 25,
          tabBackgroundColor: Colors.deepPurpleAccent.withOpacity(0.1),
          tabBorderRadius: 80,
          tabs: const [
            GButton(
              icon: Icons.home_rounded,
              text: 'Home',
              gap: 8,
            ),
            GButton(
              icon: Icons.chat_rounded,
              text: 'Chats',
              gap: 8,
            ),
            GButton(
              icon: Icons.person,
              text: 'Profile',
              gap: 8,
            ),
          ],
        ),
      ),
      body: pages[_selectedIndex],
    );
  }
}

// floatingActionButton: SpeedDial(
      //   spaceBetweenChildren: 10,
      //   iconTheme: const IconThemeData(size: 30, color: black),
      //   buttonSize: const Size(0, 65),
      //   backgroundColor: yellow,
      //   icon: Icons.interests_rounded,
      //   childrenButtonSize: const Size(65, 60),
      //   children: [
      //     SpeedDialChild(
      //         labelStyle: const TextStyle(
      //             fontSize: 20, color: black, fontWeight: FontWeight.w400),
      //         labelBackgroundColor: yellow,
      //         backgroundColor: yellow,
      //         child: const Icon(
      //           Icons.chat_rounded,
      //           size: 30,
      //           color: black,
      //         ),
      //         label: 'Contact'),
      //   ],
      // ),