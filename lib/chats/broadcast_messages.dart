import 'package:flutter/material.dart';

class BroadcastMessages extends StatelessWidget {
  const BroadcastMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20,),
             ListTile(
                leading: CircleAvatar(
                              minRadius: 30,
                              maxRadius: 30,
                              backgroundImage:
                                  AssetImage('assets/images/person1.png'),
                            ),
                title: Text('Flutter batch 1'),
               subtitle: Text('Hola'),
                trailing: Icon(Icons.circle_rounded),
              ),
              const SizedBox(height: 20,),
             ListTile(
                leading: CircleAvatar(
                              minRadius: 30,
                              maxRadius: 30,
                              backgroundImage:
                                  AssetImage('assets/images/person1.png'),
                            ),
                title: Text('Java batch 1'),
               subtitle: Text('hi'),
                trailing: Icon(Icons.circle_rounded),
              ),
              const SizedBox(height: 20,),
             ListTile(
                leading: CircleAvatar(
                              minRadius: 30,
                              maxRadius: 30,
                              backgroundImage:
                                  AssetImage('assets/images/person1.png'),
                            ),
                title: Text('Java batch 2'),
               subtitle: Text('Hola'),
                trailing: Icon(Icons.circle_rounded),
              ),const SizedBox(height: 20,),
             ListTile(
                leading: CircleAvatar(
                              minRadius: 30,
                              maxRadius: 30,
                              backgroundImage:
                                  AssetImage('assets/images/person1.png'),
                            ),
                title: Text('C++ batch 1'),
               subtitle: Text('Hola'),
                trailing: Icon(Icons.circle_rounded),
              ),
          ],
        ),
      ),
    );
  }
}
