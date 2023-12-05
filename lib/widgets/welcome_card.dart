import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/custom_card.dart';

class WelcomeCard extends StatelessWidget {
  const WelcomeCard(
      {super.key,
      this.welcome = 'Welcome \nback 👋',
      required this.fname,
      required this.lname,
      required this.verified,
      required this.jobTitle,
      required this.profilePath});
  final String welcome;
  final String fname;
  final String lname;
  final String jobTitle;
  final String profilePath;
  final IconData verified;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
        height: 280.h,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 30,
              ),
              Text(
                welcome,
                style: GoogleFonts.notoSerifDisplay(
                    fontSize: 35,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 30.w,
              ),
              Column(
                children: [
                  CircleAvatar(
                    minRadius: 40.r,
                    maxRadius: 40.r,
                    backgroundImage: AssetImage(profilePath),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Text(
                        '[ $jobTitle ]',
                        style: const TextStyle(fontSize: 15),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Icon(
                        verified,
                        size: 15,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              '$fname \n$lname',
              style: GoogleFonts.notoSerifDisplay(
                  fontSize: 40,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ]));
  }
}
