import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentor_map/widgets/welcome_card.dart';
import '../pages/trainer_page.dart';
import '../themes/themes.dart';
import '../widgets/cus_app_bar.dart';
import '../widgets/custom_card.dart';
import '../widgets/list_tile_cus.dart';
import '../widgets/tabs_4.dart';
import '../widgets/text_button_login.dart';



class HomePageAdmin extends StatelessWidget {
  const HomePageAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const CusAppBar(),
            const SizedBox(
              height: 30,
            ),
            const WelcomeCard(verified: Icons.verified_rounded, jobTitle: 'TRAINER', profilePath:'assets/images/person1.png', fname: 'Hemant',lname: 'Kamat',),
            const SizedBox(
              height: 20,
            ),
            //SEARCH FIELD
            const LoginBtn1(
              hintText: 'Enter Trainer Name, ID, Skills',
              obscureText: false,
              icon: Icon(Icons.sort_rounded),
            ),
            const SizedBox(
              height: 20,
            ),
            //TABS
            const Tabs4(
              tab1: 'Trainer',
              tab2: 'Availability',
              tab3: 'Skills',
              tab4: 'More',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomCard(
              height: 500,
              width: 380,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Trainers',
                      style: GoogleFonts.notoSerifDisplay(
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomListTile(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const TrainerPage()));
                    },
                    color: red,
                    session: '7',
                    name: 'S U TEJAS',
                    skills: 'Flutter',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomListTile(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const TrainerPage()));
                    },
                    color: green,
                    session: '0',
                    name: 'S U TEJAS',
                    skills: 'Photoshop',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomListTile(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const TrainerPage()));
                    },
                    color: green,
                    name: 'S U TEJAS',
                    skills: 'Photoshop',
                    session:'1',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomListTile(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const TrainerPage()));
                    },
                    color: yellow,
                    session: '6',
                    name: 'S U TEJAS',
                    skills: 'Photoshop',
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
