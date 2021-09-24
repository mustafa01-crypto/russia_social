import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import 'constants.dart';

//Titles
TextStyle titleStyle = GoogleFonts.roboto(
  letterSpacing: 1.0,
  color: titleColor,
  fontSize: 19.sp,
  fontWeight: FontWeight.w600,
);

TextStyle loginTitleStyle = GoogleFonts.roboto(
  letterSpacing: 1.0,
  color: titleColor,
  fontSize: 34.sp,
  fontWeight: FontWeight.w500,
);

TextStyle loginForgotTitleStyle = GoogleFonts.roboto(
  letterSpacing: 1.0,
  color: titleColor,
  fontSize: 25.sp,
  fontWeight: FontWeight.w500,
);

TextStyle newPasswordStyle = GoogleFonts.roboto(
  letterSpacing: 1.0,
  color: titleColor,
  fontSize: 30.sp,
  fontWeight: FontWeight.w500,
);

TextStyle firstStyle = GoogleFonts.roboto(
  letterSpacing: 0.9,
  color: buttonLeft,
  fontSize: 19.sp,
  fontWeight: FontWeight.w400,
);

TextStyle secondStyle = GoogleFonts.roboto(
  letterSpacing: 0.9,
  color: iconColor,
  fontSize: 19.sp,
  fontWeight: FontWeight.w400,
);

TextStyle thirdStyle = GoogleFonts.roboto(
  letterSpacing: 0.9,
  color: titleColor,
  fontSize: 19.sp,
  fontWeight: FontWeight.w400,
);

TextStyle bodyTextStyle = GoogleFonts.roboto(
  letterSpacing: 0.9,
  height: 1.4,
  color: bodyTitleColor,
  fontSize: 12.sp,
  fontWeight: FontWeight.w400,
);

TextStyle bodyTitleStyle = GoogleFonts.roboto(
  color: bodyTitleColor,
  letterSpacing: 1.0,
  fontSize: 19.sp,
  fontWeight: FontWeight.w700,
);

TextStyle bodyFallowStyle = GoogleFonts.roboto(
  color: bodyTitleColor,
  letterSpacing: 1.0,
  fontSize: 17.sp,
  fontWeight: FontWeight.w500,
);

TextStyle bodyExplaining = GoogleFonts.roboto(
  color: bodyTitleColor,
  letterSpacing: 1.4,
  fontSize: 19.sp,
  fontWeight: FontWeight.w400,
);

//Littles

TextStyle userNickName = GoogleFonts.roboto(
  fontSize: 12.sp,
  color: buttonLeft,
  fontWeight: FontWeight.w500,
);
TextStyle textLabel = GoogleFonts.roboto(
  fontSize: 12.sp,
  color: bodyDateColor,
  fontWeight: FontWeight.w400,
);

TextStyle textLabelSupport = GoogleFonts.roboto(
  fontSize: 12.sp,
  color: titleColor,
  fontWeight: FontWeight.w400,
);

TextStyle fallowNameStyle = GoogleFonts.roboto(
  fontSize: 12.sp,
  color: bodyTitleColor,
  fontWeight: FontWeight.w400,
);

TextStyle socialNetworkStyle = GoogleFonts.roboto(
  fontSize: 12.sp,
  color: bodyTitleColor,
  fontWeight: FontWeight.w500,
);
TextStyle socialNetworkAddStyle = GoogleFonts.roboto(
  fontSize: 12.sp,
  color: buttonLeft,
  fontWeight: FontWeight.w500,
);

TextStyle socialNetworkCancelStyle = GoogleFonts.roboto(
  fontSize: 10.sp,
  color: titleColor,
  fontWeight: FontWeight.w400,
);

TextStyle buttonName = GoogleFonts.roboto(
  fontSize: 14.sp,
  color: Colors.white,
  fontWeight: FontWeight.w500,
);

TextStyle profileHintStyle = GoogleFonts.roboto(
  fontSize: 12.sp,
  color: titleColor,
  fontWeight: FontWeight.w500,
);

//Body

TextStyle bodyDateStyle = GoogleFonts.roboto(
  fontSize: 11.sp,
  color: bodyDateColor,
  fontWeight: FontWeight.w400,
);

TextStyle forgotPasswordStyle = GoogleFonts.roboto(
  fontSize: 11.4.sp,
  letterSpacing: 1.1,
  color: bodyTitleColor,
  fontWeight: FontWeight.w400,
);

TextStyle forgotPasswordBlackStyle = GoogleFonts.roboto(
  fontSize: 11.4.sp,
  letterSpacing: 1.1,
  color: Colors.black,
  fontWeight: FontWeight.w400,
);

TextStyle bodyEmailStyle = GoogleFonts.roboto(
  fontSize: 13.2.sp,
  color: bodyTitleColor,
  fontWeight: FontWeight.w400,
);

TextStyle editProfileStyle = GoogleFonts.roboto(
  fontSize: 13.8.sp,
  color: bodyTitleColor,
  fontWeight: FontWeight.w500,
);

TextStyle editProfileOrangeStyle = GoogleFonts.roboto(
  fontSize: 13.8.sp,
  color: buttonLeft,
  fontWeight: FontWeight.w500,
);

//Gradient

LinearGradient buttonGradient = LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: [buttonLeft, buttonRight],
);

final Shader textShader = LinearGradient(
  colors: <Color>[buttonLeft, buttonRight],
).createShader(
  const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
);
