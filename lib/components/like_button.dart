import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:like_button/like_button.dart';
import 'package:russia_social/widgets/constants.dart';
import 'package:sizer/sizer.dart';


Widget buttonLike(int like,IconData fontIcons) {
  return Padding(
    padding:  EdgeInsets.only(left: 4.w),
    child: LikeButton(
      size: 24.sp,
      circleColor:
       CircleColor(start: buttonLeft, end: buttonRight),
      bubblesColor:  BubblesColor(
        dotPrimaryColor:buttonLeft,
        dotSecondaryColor: buttonRight,
      ),
      likeBuilder: (bool isLiked) {
        return FaIcon(
          fontIcons,
          color: isLiked ? buttonLeft : iconColor,
          size: 18.sp,
        );
      },
      likeCount: 665,
      countBuilder: (int? count, bool isLiked, String text) {
        var color = isLiked ? buttonLeft : iconColor;
        Widget result;
        if (count == 0) {
          result = Text(
            "love",
            style: TextStyle(color: color),
          );
        } else {
          result = Text(
            text,
            style: TextStyle(color: color),
          );
        }
        return result;
      },
    ),
  );

}