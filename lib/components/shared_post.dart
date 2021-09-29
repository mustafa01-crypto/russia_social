import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:russia_social/widgets/constants.dart';
import 'package:russia_social/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';

import 'like_button.dart';

Widget sharedPost() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 2.66.w, vertical: 1.h),
    child: Container(
      width: 100.w,
      height: 70.h,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.33.w)),
      child: Stack(
        children: [
          Container(
            width: 100.w,
            height: 20.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.8.w)),
            child: Image.asset(
              "assets/badboy.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 8.w,
            top: 15.h,
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: Colors.white, width: 0.3.w)),
              child:  CircleAvatar(
                radius: 7.58.w,
                backgroundColor: Colors.white,
                backgroundImage: const AssetImage("assets/badboy.jpg"),
              ),
            ),
          ),
          Positioned(
            left: 4.w,
            top: 25.h,
            child: Row(
              children: [
                Text(
                  "William Lawton ",
                  style: firstStyle,
                ),
                Text(
                  "feedback",
                  style: secondStyle,
                ),
              ],
            ),
          ),
          Positioned(
            left: 4.w,
            top: 29.5.h,
            child: Text(
              "My first meeting with love",
              style: thirdStyle,
            ),
          ),
          Positioned(
              left: 4.w,
              right: 2.w,
              top: 34.5.h,
              child: SizedBox(
                height: 25.h,
                width: 90.w,
                child: Text(
                  "Whether you’re crossing the George"
                      " Washington Bridge into the Heights, riding the"
                      " Metro North-south along the Hudson, or stuck "
                      "in traffic along the Long Island Expressway, "
                      "there’s nothing like that feeling of magic"
                      " and inspiration that washes over you the "
                      "moment you first spot the Manhattan skyline",
                  style: bodyTextStyle,
                ),
              )),
          Positioned(
            left: 4.w,
            bottom: 12.h,
            child: Divider(
              height: 1.w,
              thickness: 2,
              color: dividerColor,
            ),
          ),
          Positioned(
            bottom: 3.h,
            child: Row(
              children: [
                Row(children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 3.w, vertical: 2.h),
                    child: Row(

                      children: [
                        buttonLike(
                          112,
                          FontAwesomeIcons.heart,
                        ),
                        buttonLike(
                          658,
                          FontAwesomeIcons.meh,
                        ),
                        buttonLike(
                          43,
                          FontAwesomeIcons.heartBroken,
                        ),
                        buttonLike(
                          1155,
                          FontAwesomeIcons.commentAlt,
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        FaIcon(
                          FontAwesomeIcons.longArrowAltRight,
                          color: buttonLeft,
                          size: 6.w,

                        )

                      ],
                    ),
                  )
                ])
              ],
            ),
          )
        ],
      ),
    ),
  );
}