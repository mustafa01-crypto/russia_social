import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget profile(String path, double width, double height, double radius) {
  return Padding(
    padding: EdgeInsets.only(left: 3.w, right: 2.w),
    child: Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: CircleAvatar(
        radius: radius,
        backgroundColor: Colors.white,
        backgroundImage: AssetImage(path),
      ),
    ),
  );
}

Widget rowImages(String url) {
  return Padding(
    padding: EdgeInsets.symmetric(
      horizontal: 2.w,
    ),
    child: Container(
      width: 90.w,
      height: 23.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.33.w),
          image: DecorationImage(
              image: NetworkImage(
                url,
              ),
              fit: BoxFit.cover)),
    ),
  );
}
