import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentor_map/admin_screens/trainer_page_editable.dart';
import 'package:mentor_map/widgets/custom_card.dart';
import 'package:mentor_map/widgets/pop_menu.dart';
import '../themes/themes.dart';
import '../widgets/list_tile_cus.dart';
import '../widgets/tabs_4.dart';
import '../widgets/text_button_login.dart';
import '../widgets/welcome_card.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            const WelcomeCard(
              verified: Icons.verified_rounded,
              jobTitle: 'ADMIN',
              profilePath: 'assets/images/person1.png',
              fname: 'Hemant',
              lname: 'Kamat',
            ),
            const SizedBox(
              height: 20,
            ),
            //SEARCH FIELD
            LoginBtn1(
              width: 390.w,
              hintText: 'Enter Trainer Name, ID, Skills',
              obscureText: false,
              icon: const Icon(Icons.sort_rounded),
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
            //custom card to wrap the trainer tiles
            CustomCard(
              height: 600.h,
              width: 380.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.w),
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
                  //Trainer tiles starts from here
                  CustomListTile(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const TrainerPageEditable()));
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
                          builder: (context) => const TrainerPageEditable()));
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
                          builder: (context) => const TrainerPageEditable()));
                    },
                    color: green,
                    name: 'S U TEJAS',
                    skills: 'Photoshop',
                    session: '1',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomListTile(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const TrainerPageEditable()));
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
