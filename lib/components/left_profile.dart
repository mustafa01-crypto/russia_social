import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget profile(String path) {
  return Padding(
    padding: EdgeInsets.only(left: 4.w, right: 2.w),
    child: Container(
      width: 28.w,
      height: 14.h,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child:  CircleAvatar(
        radius: 30,
        backgroundColor: Colors.white,
        backgroundImage:
        AssetImage(path),
      ),
    ),
  );
}