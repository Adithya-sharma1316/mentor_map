import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: CircleAvatar(
                minRadius: 30,
                maxRadius: 30,
                backgroundImage: AssetImage('assets/images/person1.png'),
              ),
              title: Text('Kamat Hemant'),
              subtitle: Text('Hola'),
              trailing: Icon(Icons.circle_rounded),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: CircleAvatar(
                minRadius: 30,
                maxRadius: 30,
                backgroundImage: AssetImage('assets/images/person1.png'),
              ),
              title: Text('Tejas'),
              subtitle: Text('hi'),
              trailing: Icon(Icons.circle_rounded),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: CircleAvatar(
                minRadius: 30,
                maxRadius: 30,
                backgroundImage: AssetImage('assets/images/person1.png'),
              ),
              title: Text('Adithya'),
              subtitle: Text('Hola'),
              trailing: Icon(Icons.circle_rounded),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: CircleAvatar(
                minRadius: 30,
                maxRadius: 30,
                backgroundImage: AssetImage('assets/images/person1.png'),
              ),
              title: Text('Hemant'),
              subtitle: Text('Hola'),
              trailing: Icon(Icons.circle_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
