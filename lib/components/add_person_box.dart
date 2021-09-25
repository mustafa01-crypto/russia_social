import 'package:flutter/material.dart';
import 'package:russia_social/widgets/constants.dart';
import 'package:russia_social/widgets/text_widget.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:sizer/sizer.dart';

import 'gradient_button.dart';

Widget addPersonBox(String number,String name,String ulke) {
  return Padding(
    padding: EdgeInsets.only(left: 4.w),
    child: Container(
      width: 92.w,
      height: 34.93.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.33.w),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 70.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                SizedBox(
                  height: 2.66.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  child: SizedBox(
                      width: 30.w,
                      height: 10.h,
                      child: GradientText(
                        number,
                        style: TextStyle(
                            height: 1,
                            fontSize: 65.sp,
                            fontFamily: 'Graphik',
                            fontWeight: FontWeight.w100,
                            foreground: Paint()
                              ..shader = linearGradient),
                        gradientDirection: GradientDirection.ttb,
                        colors: const [
                          Color(0xFFE1E1DF),
                          Color(0xFFE1E1DF),
                          Color(0xFFFFFFFF),
                        ],
                      )),
                ),
                SizedBox(
                  height: 1.8.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  child: Row(
                    children: [
                      Text(
                        name,
                        style: titleStyle,
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.settings,
                          color: iconColor2,
                          size: 15.sp,
                        ),
                        onPressed: () {
                          //Icon Settings
                        },
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 1.2.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Row(
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
                       ulke ,
                        style: bodyDateStyle,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                socialAddButtons(),
              ],
            ),
          ),
          SizedBox(
            width: 5.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconButton(
                icon: Icon(
                  Icons.cancel_outlined,
                  color: iconColor2,
                  size: 15.sp,
                ),
                onPressed: () {
                  //Icon Settings
                },
              )
            ],
          ),
        ],
      ),
    ),
  );
}