import 'package:flutter/material.dart';
import 'package:russia_social/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';

import '../constants.dart';
import 'gradient_button.dart';
import 'left_profile.dart';

Widget searchBox(String path) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.h),
    child: Container(
      width: 100.w,
      height: 18.h,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 2.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              profile(path, 28.w, 14.h, 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Peter Rollins",
                    style: bodyTitleStyle,
                  ),
                  SizedBox(
                    height: 1.w,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: bodyDateColor,
                        size: 13.sp,
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      Text(
                        "United States, New York",
                        style: bodyDateStyle,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  gradientButton("+ Subscribe"),
                ],
              )
            ],
          ),
        ],
      ),
    ),
  );
}
