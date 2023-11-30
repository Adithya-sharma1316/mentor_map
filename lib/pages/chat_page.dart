import 'package:flutter/material.dart';
import '../chats/broadcast_messages.dart';

import '../chats/calls.dart';
import '../chats/chats.dart';

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
          leading: Icon(Icons.abc),
          title: const Text(
            'MentorMap',
            style: TextStyle(fontWeight: FontWeight.w500),
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
