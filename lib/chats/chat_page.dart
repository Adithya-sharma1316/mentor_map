import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'broadcast_messages.dart';

import 'calls.dart';
import 'general_messages.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 25,
          automaticallyImplyLeading: false,
          title: Text(
            'MentorMap',
            style: GoogleFonts.notoSerifDisplay(
                fontSize: 30,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w900),
          ),
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text(
                  'Chats',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Tab(
                child: Text(
                  'Broadcast',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Tab(
                child: Text(
                  'Calls',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
            dividerColor: Colors.transparent,
          ),
        ),
        body: const TabBarView(children: [
          Chats(),
          BroadcastMessages(),
          Calls(),
        ]),
      ),
    );
  }
}
