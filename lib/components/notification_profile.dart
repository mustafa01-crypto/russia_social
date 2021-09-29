import 'package:flutter/material.dart';
import 'package:russia_social/widgets/constants.dart';
import 'package:russia_social/widgets/text_widget.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:sizer/sizer.dart';
import 'left_profile.dart';

Widget notificationBox(String path){
  return Padding(
    padding:  EdgeInsets.symmetric(horizontal: 2.66.w),
    child: Container(
      width: 94.66.w,
      height: 15.59.h,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(2.66.w)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          profile(path, 20.w, 20.w, 30),
          SizedBox(width: 2.w,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("Dimitri Andre   ",style: userNickName,),

                  Text("start",style: textLabelSupport,)
                ],
              ),
              SizedBox(
                height: 0.7.h,
              ),
              Text("followed you",style: textLabelSupport,),
              SizedBox(
                height: 0.7.h,
              ),
              Text("36 minutes ago",style: bodyDateStyle,),
            ],
          )
        ],
      ),
    ),
  );
}

Widget notificationTracks(String number) {
  return Padding(
    padding: EdgeInsets.only(left: 4.w),
    child: Container(
      width: 53.6.w,
      height: 53.6.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.33.w),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 36.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 24.w,
                    height: 8.7.h,
                    alignment: Alignment.centerLeft,
                    child: GradientText(
                      number,
                      style: TextStyle(
                          height: 1,
                          fontSize: 50.sp,
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
                SizedBox(
                  height: 0.8.h,
                ),
                Padding(
                  padding:
                  EdgeInsets.symmetric(horizontal: 3.w),
                  child: Text(
                    "Dmitriy Yakovlev",
                    style: titleStyle,
                  ),
                ),
                SizedBox(
                  height: 0.8.h,
                ),
                Padding(
                  padding:
                  EdgeInsets.symmetric(horizontal: 3.w),
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
                        "USA, Miami",
                        style: bodyDateStyle,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 4.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15.5.h,
                ),
                IconButton(
                  icon: Icon(
                    Icons.settings,
                    color: iconColor,
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
            width: 12.w,
            child: Column(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.cancel_outlined,
                    color: iconColor,
                    size: 15.sp,
                  ),
                  onPressed: () {
                    //Icon Settings
                  },
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}


Widget messageBox(String path,TextStyle style){
  return Padding(
    padding:  EdgeInsets.symmetric(horizontal: 2.66.w),
    child: Container(
      width: 94.66.w,
      height: 11.59.h,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.33.w)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          profile(path, 15.w, 15.w, 15.w),
          SizedBox(width: 2.w,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("Peter Rollins",style: socialNetworkStyle,),

                  Text("12:01 pm",style: bodyDateStyle,)
                ],
              ),
              SizedBox(
                height: 0.7.h,
              ),
              Text("Hi, i`m Peter. And I Introvert...",style: style,),
            ],
          )
        ],
      ),
    ),
  );
}