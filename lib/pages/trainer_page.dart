import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:google_fonts/google_fonts.dart';
import '../themes/themes.dart';
import '../widgets/welcome_card.dart';
import '../widgets/cus_app_bar.dart';
import '../widgets/custom_card.dart';

import '../widgets/tabs_4.dart';

class TrainerPage extends StatefulWidget {
  const TrainerPage({super.key});

  @override
  State<TrainerPage> createState() => _TrainerPageState();
}

class _TrainerPageState extends State<TrainerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SpeedDial(
        spaceBetweenChildren: 10,
        iconTheme: const IconThemeData(size: 30, color: black),
        buttonSize: const Size(0, 65),
        backgroundColor: yellow,
        icon: Icons.interests_rounded,
        childrenButtonSize: const Size(65, 60),
        children: [
          SpeedDialChild(
              labelStyle: const TextStyle(
                  fontSize: 20, color: black, fontWeight: FontWeight.w400),
              labelBackgroundColor: yellow,
              backgroundColor: yellow,
              child: const Icon(
                Icons.chat_rounded,
                size: 30,
                color: black,
              ),
              label: 'Contact'),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50),
            const CusAppBar(),
            const SizedBox(
              height: 30,
            ),
            //Welcome card
            const WelcomeCard(
              verified: Icons.verified_rounded,
              jobTitle: 'TRAINER',
              profilePath: 'assets/images/person1.png',
              fname: 'Hemant',
              lname: 'Kamat',
            ),
            const SizedBox(
              height: 20,
            ),

            //TABS
            const Tabs4(
              tab1: 'Location',
              tab2: 'Availability',
              tab3: 'Skills',
              tab4: 'More',
            ),
            const SizedBox(
              height: 20,
            ),
            //location card
            CustomCard(
              width: 380,
              height: 750,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  CustomCard(
                    height: 320,
                    width: 370,
                    color: black,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 20),
                          child: Text(
                            'Ongoing',
                            style: GoogleFonts.notoSerifDisplay(
                                fontSize: 25,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: IntrinsicHeight(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  '1326 New\nRockwood Road,\nKeith Bldg,\nOlympia, WA, 89748',
                                  style: GoogleFonts.notoSerifDisplay(
                                      color: grey,
                                      fontSize: 15,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.normal),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const VerticalDivider(
                                    indent: 5,
                                    endIndent: 5,
                                    color: grey,
                                    thickness: 1),
                                Text(
                                  '15 Jan,23\n23 Feb,23',
                                  style: GoogleFonts.notoSerifDisplay(
                                      color: grey,
                                      fontSize: 15,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.normal),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const Icon(
                                  Icons.circle,
                                  size: 30,
                                  color: Colors.greenAccent,
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: IntrinsicHeight(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  '1326 New\nRockwood Road,\nKeith Bldg,\nOlympia, WA, 89748',
                                  style: GoogleFonts.notoSerifDisplay(
                                      color: grey,
                                      fontSize: 15,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.normal),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const VerticalDivider(
                                    indent: 5,
                                    endIndent: 5,
                                    color: grey,
                                    thickness: 1),
                                Text(
                                  '15 Jan,23\n23 Feb,23',
                                  style: GoogleFonts.notoSerifDisplay(
                                      color: grey,
                                      fontSize: 15,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.normal),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const Icon(
                                  Icons.circle,
                                  size: 30,
                                  color: Colors.greenAccent,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  //Upcoming
                  const SizedBox(
                    height: 20,
                  ),
                  CustomCard(
                    height: 320,
                    width: 370,
                    color: black,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 20),
                          child: Text(
                            'Upcoming',
                            style: GoogleFonts.notoSerifDisplay(
                                fontSize: 25,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: IntrinsicHeight(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  '1326 New\nRockwood Road,\nKeith Bldg,\nOlympia, WA, 89748',
                                  style: GoogleFonts.notoSerifDisplay(
                                      color: grey,
                                      fontSize: 15,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.normal),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const VerticalDivider(
                                    indent: 5,
                                    endIndent: 5,
                                    color: grey,
                                    thickness: 1),
                                Text(
                                  '15 Jan,23\n23 Feb,23',
                                  style: GoogleFonts.notoSerifDisplay(
                                      color: grey,
                                      fontSize: 15,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.normal),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const Icon(
                                  Icons.circle,
                                  size: 30,
                                  color: Colors.amberAccent,
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: IntrinsicHeight(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  '1326 New\nRockwood Road,\nKeith Bldg,\nOlympia, WA, 89748',
                                  style: GoogleFonts.notoSerifDisplay(
                                      color: grey,
                                      fontSize: 15,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.normal),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const VerticalDivider(
                                    indent: 5,
                                    endIndent: 5,
                                    color: grey,
                                    thickness: 1),
                                Text(
                                  '15 Jan,23\n23 Feb,23',
                                  style: GoogleFonts.notoSerifDisplay(
                                      color: grey,
                                      fontSize: 15,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.normal),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const Icon(
                                  Icons.circle,
                                  size: 30,
                                  color: Colors.amberAccent,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
