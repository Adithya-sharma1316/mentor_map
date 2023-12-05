import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../chats/chat_page.dart';
import '../admin_screens/admin_profile_page.dart';
import '../trainer/trainer_page.dart';

class TrainerHomePage extends StatefulWidget {
  const TrainerHomePage({super.key});

  @override
  State<TrainerHomePage> createState() => _TrainerHomePageState();
}

class _TrainerHomePageState extends State<TrainerHomePage> {
  final List pages = [
    const TrainerPage(),
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
