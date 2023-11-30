import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentor_map/pages/signup_page.dart';
import 'package:mentor_map/themes/themes.dart';
import 'package:mentor_map/widgets/cta_buton.dart';
import 'package:mentor_map/widgets/text_button_login.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                  style: TextStyle(fontWeight: FontWeight.w300),
                )),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Image.asset('assets/images/login_signup.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
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
                        const SizedBox(
                          height: 20,
                        ),
                        const LoginBtn1(
                          hintText: 'Username, Phone number or E-mail',
                          obscureText: false,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const LoginBtn1(
                          hintText: 'Password',
                          icon: Icon(Icons.lock_outline_rounded),
                          obscureText: true,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (cntext) => const HomePage()));
                            },
                            child: const CTAButton(text: 'Sign In')),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text('Forgot Login Details? Get Help Logging in'),
                        const Divider(
                          color: grey,
                          indent: 20,
                          endIndent: 20,
                          thickness: 1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Don\'t Have an account? '),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => const SignUpPage(),
                                  ),
                                );
                              },
                              child: const Text(
                                'Signup now',
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
