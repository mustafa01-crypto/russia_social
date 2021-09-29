import 'package:flutter/material.dart';
import 'package:russia_social/components/falloers_info.dart';
import 'package:russia_social/components/gradient_button.dart';
import 'package:russia_social/components/left_profile.dart';
import 'package:russia_social/components/shared_post.dart';
import 'package:russia_social/components/top_row_icons.dart';
import 'package:russia_social/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/constants.dart';

class YourProfile extends StatefulWidget {
  const YourProfile({Key? key}) : super(key: key);

  @override
  _YourProfileState createState() => _YourProfileState();
}

class _YourProfileState extends State<YourProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: scaffoldBack,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 1.w,
                    ),
                    topRow(context, "Previous page title", 0),
                  ],
                ),
                SizedBox(
                  height: 1.h,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 2.66.w, vertical: 1.h),
                  child: Container(
                    width: 100.w,
                    height: 60.5.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.33.w)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 4.h,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            profile("assets/badboy.jpg", 28.w, 15.68.h, 15.68.h),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "@petttter",
                                  style: userNickName,
                                ),
                                SizedBox(
                                  height: 0.5.w,
                                ),
                                Text(
                                  "Peter Rollins",
                                  style: bodyTitleStyle,
                                ),
                                SizedBox(
                                  height: 0.5.w,
                                ),
                                Text(
                                  "Joined in March 2020",
                                  style: bodyDateStyle,
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                gradientTextButton("Edit Profile")
                              ],
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 2.w, vertical: 4.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.location_on,
                                color: bodyDateColor,
                                size:3.9.w,
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
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 2.w),
                          child: Text(
                            "Hi, i`m Peter. And I Introvert...",
                            style: bodyExplaining,
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5.w, right: 10.w),
                          child: Divider(
                            thickness: 2,
                            color: dividerColor,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 2.w),
                          child: Text(
                            "petterrollllins@gmail.com",
                            style: bodyEmailStyle,
                          ),
                        ),
                        socialButtons(),
                      ],
                    ),
                  ),
                ),
                fallowInfo(),
                sharedPost()
              ],
            ),
          )),
    );
  }
}
