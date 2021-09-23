import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget profile(String path,double width,double height,double radius) {
  return Padding(
    padding: EdgeInsets.only(left: 4.w, right: 2.w),
    child: Container(
      width: width,
      height:height,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child:  CircleAvatar(
        radius: radius,
        backgroundColor: Colors.white,
        backgroundImage:
        AssetImage(path),
      ),
    ),
  );
}