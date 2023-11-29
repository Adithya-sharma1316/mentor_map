import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentor_map/themes/themes.dart';
import 'package:mentor_map/widgets/custom_card.dart';
import 'package:mentor_map/widgets/tabs_4.dart';

class StudentPage extends StatelessWidget {
  const StudentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //LOGO
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 10),
                  child: Text(
                    'MentorMap',
                    style: GoogleFonts.notoSerifDisplay(
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, right: 20),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.menu,
                        size: 35,
                      )),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            CustomCard(
              height: 270,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Welcome \nback 👋',
                          style: GoogleFonts.notoSerifDisplay(
                              fontSize: 35,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold),
                        ),
                        const Column(
                          children: [
                            CircleAvatar(
                              minRadius: 40,
                              maxRadius: 40,
                              backgroundImage:
                                  AssetImage('assets/images/person1.png'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  '[ STUDENT ]',
                                  style: TextStyle(fontSize: 15),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.person_rounded,
                                  size: 15,
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    //ADMIN NAME
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text(
                        'Aditya \nSharma',
                        style: GoogleFonts.notoSerifDisplay(
                            fontSize: 40,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ]),
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
                    height: 320, width: 370,
                    color: black,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    Padding(
                    padding: const EdgeInsets.only(top:20, left: 20),
                    child: Text(
                      'Location',
                      style: GoogleFonts.notoSerifDisplay(
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 5,),

                   Padding(
                     padding: const EdgeInsets.only(left:20.0),
                     child: IntrinsicHeight(
                       child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [Text(
                          '1326 New\nRockwood Road,\nKeith Bldg,\nOlympia, WA, 89748',
                          style: GoogleFonts.notoSerifDisplay(
                            color: grey,
                              fontSize: 15,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.normal),
                        ),
                        const SizedBox(width: 10,),
                        const VerticalDivider(indent: 5,endIndent: 5,color: grey,thickness: 1),Text(
                          '15 Jan,23\n23 Feb,23',
                          style: GoogleFonts.notoSerifDisplay(
                            color: grey,
                              fontSize: 15,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.normal),
                        ),const SizedBox(width: 20,)
                       ,const Icon(Icons.circle,size: 30,color:Colors.greenAccent,)
                        ],
                                       ),
                     ),
                     
                   ),
                   const SizedBox(height: 50,),
                    Padding(
                     padding: const EdgeInsets.only(left:20.0),
                     child: IntrinsicHeight(
                       child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [Text(
                          '1326 New\nRockwood Road,\nKeith Bldg,\nOlympia, WA, 89748',
                          style: GoogleFonts.notoSerifDisplay(
                            color: grey,
                              fontSize: 15,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.normal),
                        ),
                        const SizedBox(width: 10,),
                        const VerticalDivider(indent: 5,endIndent: 5,color: grey,thickness: 1),Text(
                          '15 Jan,23\n23 Feb,23',
                          style: GoogleFonts.notoSerifDisplay(
                            color: grey,
                              fontSize: 15,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.normal),
                        ),const SizedBox(width: 20,)
                       ,const Icon(Icons.circle,size: 30,color:Colors.greenAccent,)
                        ],
                                       ),
                     ),
                   )
                  ],),),
                   //Upcoming 
            const SizedBox(height: 40,),
                  CustomCard(
                    height: 320, width: 370,
                    color: black,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    Padding(
                    padding: const EdgeInsets.only(top:20, left: 20),
                    child: Text(
                      'Upcoming',
                      style: GoogleFonts.notoSerifDisplay(
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 5,),

                   Padding(
                     padding: const EdgeInsets.only(left:20.0),
                     child: IntrinsicHeight(
                       child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [Text(
                          '1326 New\nRockwood Road,\nKeith Bldg,\nOlympia, WA, 89748',
                          style: GoogleFonts.notoSerifDisplay(
                            color: grey,
                              fontSize: 15,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.normal),
                        ),
                        const SizedBox(width: 10,),
                        const VerticalDivider(indent: 5,endIndent: 5,color: grey,thickness: 1),Text(
                          '15 Jan,23\n23 Feb,23',
                          style: GoogleFonts.notoSerifDisplay(
                            color: grey,
                              fontSize: 15,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.normal),
                        ),const SizedBox(width: 20,)
                       ,const Icon(Icons.circle,size: 30,color:Colors.amberAccent,)
                        ],
                                       ),
                     ),
                     
                   ),
                   const SizedBox(height: 50,),
                    Padding(
                     padding: const EdgeInsets.only(left:20.0),
                     child: IntrinsicHeight(
                       child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [Text(
                          '1326 New\nRockwood Road,\nKeith Bldg,\nOlympia, WA, 89748',
                          style: GoogleFonts.notoSerifDisplay(
                            color: grey,
                              fontSize: 15,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.normal),
                        ),
                        const SizedBox(width: 10,),
                        const VerticalDivider(indent: 5,endIndent: 5,color: grey,thickness: 1),Text(
                          '15 Jan,23\n23 Feb,23',
                          style: GoogleFonts.notoSerifDisplay(
                            color: grey,
                              fontSize: 15,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.normal),
                        ),const SizedBox(width: 20,)
                       ,const Icon(Icons.circle,size: 30,color:Colors.amberAccent,)
                        ],
                                       ),
                     ),
                   )
                  ],),),
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
