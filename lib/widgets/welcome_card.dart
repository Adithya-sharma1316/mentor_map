import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/custom_card.dart';

class WelcomeCard extends StatelessWidget {
  const WelcomeCard({super.key,
  required this.fname,
  required this.lname,
  required this.verified,
  required this.jobTitle,
  required this.profilePath});
  final String fname;
  final String lname;
final String jobTitle;
final String profilePath;
final IconData verified;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
              height: 270,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(width: 30,),
                        Text(
                          'Welcome \nback 👋',
                          style: GoogleFonts.notoSerifDisplay(
                              fontSize: 35, 
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(width: 30,),
                          Column(
                          children: [
                            CircleAvatar(
                              minRadius: 40,
                              maxRadius: 40,
                              backgroundImage:
                                  AssetImage(profilePath),
                            ),
                           const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  '[ $jobTitle ]',
                                  style: const TextStyle(fontSize: 15),
                                ),
                               const  SizedBox(
                                  width: 10,
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
                    ),Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text(
                        '$fname \n$lname',
                        style: GoogleFonts.notoSerifDisplay(
                            fontSize: 40,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold),
                      ),
                    ),]));
  }
}

