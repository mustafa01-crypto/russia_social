import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:russia_social/widgets/constants.dart';
import 'package:russia_social/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';

import 'gradient_button.dart';

Widget rowSubscribeBox(String path,String name,String followers) {
  return Padding(
    padding: EdgeInsets.only(left: 4.w),
    child: Stack(
      children: [
        Container(
          width: 46.w,
          height: 27.h,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.33.w)),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 3.h),
                child: Container(
                  width: 15.w,
                  height: 10.h,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    radius: 12.w,
                    backgroundColor: Colors.white,
                    backgroundImage: const AssetImage(
                        "assets/angel.jpg"),
                  ),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                "Peter Rollins",
                style: profileAddStyle,
              ),
              SizedBox(
                height: 0.6.h,
              ),
              Text(
                "45 feedbacks",
                style: socialNetworkCancelStyle,
              ),
              SizedBox(
                height: 1.6.h,
              ),
              gradientAddButton("+ Subscribe", 28.w, 3.6.h),
            ],
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 1.w,
          child: Container(
            width: 5.w,
            height: 3.h,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
              radius: 4.w,
              backgroundColor: Colors.white,
              backgroundImage:
              const AssetImage("assets/angel.jpg"),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget rowCommentBox(String title) {
  return Padding(
    padding:  EdgeInsets.only(left: 2.66.w),
    child: Container(
      width: 75.2.w,
      height: 24.h,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.33.w)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 2.h,
          ),
          Padding(
            padding:  EdgeInsets.only(left: 4.w),
            child: Text(
              title,
              style: bodyCommentTitle,
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          Padding(
            padding:  EdgeInsets.only(left: 4.w,right: 2.w),
            child: Text(
              "Whether you’re crossing "
                  "the George Washington Bridge into "
                  "the Heights, riding the Metro",
              style: bodyAddComment,
            ),
          )
        ],
      ),
    ),
  );
}

Widget columnCommentBox() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 2.66.w),
    child: Container(
      width: 100.w,
      height: 23.h,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.33.w)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 2.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 2.w, right: 3.w),
            child: Text(
              "^^",
              style: firstStyle,
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 2.w, right: 3.w),
            child: Text(
              "It is not a fact that the"
                  " approximate structure of marketing "
                  "research positions "
                  "the branded media mix...",
              style: bodyEmailStyle,
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 2.w, right: 3.w),
            child: Row(
              children: [
                Text(
                  "Any time of year is a great time ",
                  style: socialNetworkAddStyle,
                ),
                SizedBox(
                  width: 4.w,
                ),
                FaIcon(
                  FontAwesomeIcons.longArrowAltRight,
                  color: buttonLeft,
                  size: 21.sp,
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}