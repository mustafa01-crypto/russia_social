import 'package:flutter/material.dart';
import 'package:russia_social/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';

import 'lists.dart';

Widget fallowInfo() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 2.66.w, vertical: 1.h),
    child: Container(
      width: 100.w,
      height: 13.33.h,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
                4,
                    (index) => Text(
                  fallow[index],
                  style: bodyFallowStyle,
                )),
          ),
          SizedBox(
            height: 0.7.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
                4,
                    (index) => Text(
                  fallowName[index],
                  style: fallowNameStyle,
                )),
          ),
        ],
      ),
    ),
  );
}