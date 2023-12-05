import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../themes/themes.dart';
import '../widgets/pop_menu.dart';
import '../widgets/custom_card.dart';
import '../widgets/tabs_4.dart';

class TrainerPageEditable extends StatefulWidget {
  const TrainerPageEditable({super.key});

  @override
  State<TrainerPageEditable> createState() => _TrainerPageEditableState();
}

class _TrainerPageEditableState extends State<TrainerPageEditable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: yellow,
        onPressed: () {},
        child: const Icon(
          Icons.edit_rounded,
          color: black,
        ),
      ),
      appBar: AppBar(
        titleSpacing: 25.w,
        automaticallyImplyLeading: false,
        title: Text(
          'MentorMap',
          style: GoogleFonts.notoSerifDisplay(
              fontSize: 30,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w900),
        ),
        actions: const [CusPopUpMenu(icon: Icons.menu)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
//Edit Details of
            CustomCard(
                height: 140.h,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, top: 20).w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Edit Details: ',
                            style: GoogleFonts.notoSerifDisplay(
                                fontSize: 25,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'S U Tejas ',
                            style: GoogleFonts.notoSerifDisplay(
                                fontSize: 25,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold),
                          ),
                          const Text('[ TRAINER ]',
                              style: TextStyle(fontSize: 13)),
                        ],
                      ),
                      const CircleAvatar(
                        maxRadius: 40,
                        backgroundImage:
                            AssetImage('assets/images/person1.png'),
                      )
                    ],
                  ),
                )),
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
