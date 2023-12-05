import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        left: 10.w,
        right: 10.w,
        radius: 30.r,
        color: black,
        height: 90.h,
        width: 350.w,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10).w,
              child: CircleAvatar(
                minRadius: 35.r,
                maxRadius: 35.r,
                backgroundImage: const AssetImage('assets/images/person1.png'),
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
                  Text(
                    'Sessions taken: $session',
                    style: const TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
            SizedBox(width: 90.sp),
            Center(
              child: Column(children: [
                const SizedBox(
                  height: 25,
                ),
                Icon(
                  Icons.circle,
                  size: 30,
                  color: color,
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
