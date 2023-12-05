import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentor_map/student/student_page.dart';
import 'package:mentor_map/themes/themes.dart';
import 'package:mentor_map/widgets/cta_buton.dart';
import 'package:mentor_map/widgets/text_button_login.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Center(
                    child: Text(
                  'English',
                  style: TextStyle(fontWeight: FontWeight.w200),
                )),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0).w,
                  child: Image.asset('assets/images/login_signup.png',
                      height: 380.h, width: 390.w),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10).w,
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          'MentorMap',
                          style: GoogleFonts.notoSerifDisplay(
                              fontSize: 35,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        const LoginBtn1(
                          hintText: 'Phone number or E-mail',
                          obscureText: false,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        const LoginBtn1(
                          hintText: 'Password',
                          icon: Icon(Icons.lock_outline_rounded),
                          obscureText: true,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        const LoginBtn1(
                          hintText: 'Confirm Password',
                          icon: Icon(Icons.lock_outline_rounded),
                          obscureText: true,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (cntext) => const StudentPage()));
                          },
                          child: const CTAButton(text: 'Signup'),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        const Divider(
                          color: grey,
                          indent: 20,
                          endIndent: 20,
                          thickness: 1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Have an account? '),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop(
                                  MaterialPageRoute(
                                    builder: (context) => const SignUpPage(),
                                  ),
                                );
                              },
                              child: const Text(
                                'Signin now',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
