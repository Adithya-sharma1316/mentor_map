import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentor_map/themes/themes.dart';

class CTAButton extends StatelessWidget {
  final String text;
  const CTAButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20).w,
      child: Container(
        height: 60.h,
        width: 390.r,
        decoration: BoxDecoration(
          color: bluePrimaryButtonColor,
          borderRadius: BorderRadiusDirectional.horizontal(
            end: const Radius.circular(40).r,
            start: const Radius.circular(40).r,
          ),
        ),
        child: Center(
            child: Text(
          text,
          style: const TextStyle(fontSize: 20, color: Colors.white),
        )),
      ),
    );
  }
}
