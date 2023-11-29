import 'package:flutter/material.dart';
import 'package:mentor_map/themes/themes.dart';
import 'package:mentor_map/widgets/custom_card.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {super.key,
      required this.color,
      required this.session,
      required this.name,
      required this.skills,
      required this.onTap});
      final String session;
      final Color color;
  final String name;
  final String skills;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CustomCard(
          left: 10,
          right: 10,
          radius: 30,
          color: black,
          height: 80,
          width: 345,
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: CircleAvatar(
                  minRadius: 35,
                  maxRadius: 35,
                  backgroundImage: AssetImage('assets/images/person1.png'),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(fontSize: 15),
                    ),
                    Text(
                      skills,
                      style: const TextStyle(fontSize: 12),
                    ),
                    Text('Sessions taken: $session',style: const TextStyle(fontSize: 12),)
                  ],
                ),
               
                
              ),
               const SizedBox(width:90),
              Center(
                child: Column(
                 
                  children: [ 
                    const SizedBox(height: 25,),
                    Icon(Icons.circle,size: 30,color:color,)]),
              ),
          
               
            ],
          )),
    );
  }
}
