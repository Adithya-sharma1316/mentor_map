import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:mentor_map/pages/login_page.dart';
import 'package:mentor_map/widgets/cta_buton.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'MentorMap',
                  style: GoogleFonts.notoSerifDisplay(
                      fontSize: 35,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w900),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10, top: 10),
              child: Lottie.asset('assets/lottie/ani1.json'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: Text(
                '"Ready to embark on your learning adventure ?"',
                style: GoogleFonts.notoSerifDisplay(
                  fontSize: 35,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const LoginPage(),
              )),
              child: const CTAButton(
                text: 'Get Started',
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Terms & Conditions apply'),
            )
          ],
        ),
      ),
    );
  }
}
