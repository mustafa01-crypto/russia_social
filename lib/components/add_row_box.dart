import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:russia_social/widgets/constants.dart';
import 'package:russia_social/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';

import 'gradient_button.dart';

Widget rowSubscribeBox(
    String path1, String name, String followers, String path2) {
  return Padding(
    padding: EdgeInsets.only(left: 4.w),
    child: Stack(
      children: [
        Container(
          width: 46.w,
          height: 27.h,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5.33.w)),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 6.h),
                child: Container(
                  width: 12.w,
                  height: 6.72.h,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    radius: 12.w,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage(path1),
                  ),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                name,
                style: profileAddStyle,
              ),
              SizedBox(
                height: 0.6.h,
              ),
              Text(
                followers,
                style: socialNetworkCancelStyle,
              ),
              SizedBox(
                height: 2.h,
              ),
              gradientAddButton("+ Subscribe", 28.w, 3.6.h),
            ],
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          child: SizedBox(
            width: 4.w,
            height: 2.h,
            child: Container(
              color: scaffoldBack,
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 0.4.w,
          child: Container(
            width: 8.w,
            height: 8.w,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 3),
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(
                  path2,
                ))),
          ),
        ),
      ],
    ),
  );
}

Widget rowCommentBox(
  String title,
) {
  return Padding(
    padding: EdgeInsets.only(left: 3.w),
    child: Container(
      padding: EdgeInsets.only(right: 2.66.w),
      width: 75.2.w,
      height: 24.h,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5.33.w)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 2.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 4.w),
            child: Text(
              title,
              style: bodyCommentTitle,
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 4.w, right: 2.w),
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

Widget columnCommentBox(String text) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 2.66.w),
    child: Container(
      width: 100.w,
      height: 23.h,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5.33.w)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 2.h,
          ),
          Padding(
              padding: EdgeInsets.only(left: 2.w, right: 3.w),
              child: SizedBox(
                  width: 12.w,
                  height: 2.3.h,
                  child: SvgPicture.asset("assets/svg/quote.svg"))),
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
                  text,
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

Widget savedDrafts(String text, String title) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 2.66.w),
    child: Container(
      width: 100.w,
      height: 23.h,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5.33.w)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 2.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 4.w),
            child: Text(
              "My first meeting with love",
              style: bodyMenuItems,
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 4.w, right: 3.w),
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
            padding: EdgeInsets.only(left: 4.w, right: 3.w),
            child: Row(
              children: [
                Text(
                  text,
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
