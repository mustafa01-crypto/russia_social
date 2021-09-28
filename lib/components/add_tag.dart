import 'package:flutter/material.dart';
import 'package:russia_social/widgets/constants.dart';
import 'package:russia_social/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';

Widget addTag(String tag) {
  return Padding(
    padding:  EdgeInsets.symmetric(horizontal: 3.w),
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 3.w),
      height: 4.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: borderColor2),
        borderRadius: BorderRadius.circular(16.w),
      ),
      child: Text(
        tag,
        style: addTagStyle
      ),
    ),
  );
}

Widget addOrangeTag(String tag) {
  return Padding(
    padding:  EdgeInsets.symmetric(horizontal: 3.w),
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 3.w),
      height: 4.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: buttonLeft),
        borderRadius: BorderRadius.circular(16.w),
      ),
      child: Text(
          tag,
          style: addOrangeTagStyle
      ),
    ),
  );
}
