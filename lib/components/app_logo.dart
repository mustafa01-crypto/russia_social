import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget appLogo() {
  return SizedBox(
      width: 50.w,
      height: 7.1.h,
      child: Image.asset(
        "assets/logo.png",
        fit: BoxFit.cover,
      ));
}