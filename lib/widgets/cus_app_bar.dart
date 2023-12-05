import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/pop_menu.dart';
class CusAppBar extends StatelessWidget {
  const CusAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
                //Menu button
                const CusPopUpMenu(icon: Icons.menu_rounded)
              ],
            );
  }
}