import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:russia_social/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';
import '../constants.dart';
import 'lists.dart';

Widget gradientButton(String title) {
  return Container(
    width: 54.w,
    height: 5.h,
    alignment: Alignment.center,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        gradient: buttonGradient),
    child: Text(
      title,
      style: buttonName,
    ),
  );
}

Widget gradientTextButton(String title) {
  return Container(
    width: 54.w,
    height: 5.h,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(7),
      color: buttonColor,
    ),
    child: Text(title,
        style: GoogleFonts.roboto(
          fontSize: 9.sp,
          foreground: Paint()
            ..shader = textShader,
          fontWeight: FontWeight.w500,
        )),
  );
}

Widget socialButtons() {
  return Row(
      children: List.generate(
        4,
            (index) => Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 2.w, vertical: 2.h),
          child: SizedBox(
              width: 10.w,
              height: 10.w,
              child: SvgPicture.asset(assetSvg[index])),
        ),
      ));
}