import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:mentor_map/widgets/cta_buton.dart';

import 'login_page.dart';

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
            SizedBox(
              height: 45.h,
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
              padding: EdgeInsets.only(left: 10.0.w, right: 10.w, top: 10.h),
              child: Lottie.asset('assets/lottie/ani1.json',
                  height: 380.h, width: 390.w),
            ),
            Padding(
              padding: EdgeInsets.only(left: 50.h, right: 50.h),
              child: Text(
                '"Ready to embark on your learning adventure ?"',
                style: GoogleFonts.notoSerifDisplay(
                  fontSize: 35,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 30.sp,
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const LoginPage(),
              )),
              child: const CTAButton(
                text: 'Get Started',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0).w,
              child: const Text('Terms & Conditions apply'),
            )
          ],
        ),
      ),
    );
  }
}
