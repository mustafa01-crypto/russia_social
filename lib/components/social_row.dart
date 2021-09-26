import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:russia_social/widgets/constants.dart';
import 'package:russia_social/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';

Widget socialRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      SizedBox(
        width: 5.w,
      ),
      Container(
        width: 34.66.w,
        height: 4.7.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            border: Border.all(color: borderColor),
            color: Colors.white),
        child: Row(
          mainAxisAlignment:
          MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 1.w,
            ),
            SizedBox(
                width: 4.56.w,
                height: 4.56.w,
                child: SvgPicture.asset(
                  "assets/svg/facebook.svg",
                  fit: BoxFit.cover,
                )),
            SizedBox(
              width: 1.4.w,
            ),
            Text(
              "Facebook",
              style: socialNetworkCancelStyle,
            ),
            IconButton(
              icon: Icon(
                Icons.cancel,
                color: iconColor,
                size: 12.sp,
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
      SizedBox(
        width: 5.54.w,
      ),
      Container(
        width: 34.66.w,
        height: 4.7.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            border: Border.all(color: borderColor),
            color: Colors.white),
        child: Row(
          mainAxisAlignment:
          MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 1.w,
            ),
            SizedBox(
                width: 4.w,
                height: 4.w,
                child: SvgPicture.asset(
                  "assets/svg/youtube.svg",
                  fit: BoxFit.cover,
                )),
            SizedBox(
              width: 1.4.w,
            ),
            Text(
              "Youtube",
              style: socialNetworkCancelStyle,
            ),
            IconButton(
              icon: Icon(
                Icons.cancel,
                color: buttonLeft,
                size: 12.sp,
              ),
              onPressed: () {},
            )
          ],
        ),
      )
    ],
  );
}