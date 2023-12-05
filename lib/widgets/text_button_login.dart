import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentor_map/themes/themes.dart';

class LoginBtn1 extends StatelessWidget {
  final String hintText;
  final Icon? icon;
  final bool obscureText;
  final double width;
  const LoginBtn1(
      {super.key,
      this.width = 390,
      required this.hintText,
      this.icon,
      required this.obscureText});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w),
      child: Container(
        height: 60.h,
        width: width,
        foregroundDecoration: BoxDecoration(
            border: Border.all(color: Colors.white38),
            borderRadius: BorderRadius.horizontal(
                left: const Radius.circular(40).r,
                right: const Radius.circular(40).r)),
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.horizontal(
            end: const Radius.circular(40).r,
            start: const Radius.circular(40).r,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 5.w, right: 5.w),
          child: TextField(
            obscureText: obscureText,
            textAlign: TextAlign.left,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(20).r,
              hintText: hintText,
              hintStyle: TextStyle(fontSize: 15.r, fontWeight: FontWeight.w400),
              border: InputBorder.none,
              suffixIcon: icon,
              suffixIconColor: grey,
            ),
          ),
        ),
      ),
    );
  }
}
