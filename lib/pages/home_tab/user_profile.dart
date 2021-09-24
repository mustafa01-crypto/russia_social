import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:russia_social/components/falloers_info.dart';
import 'package:russia_social/components/gradient_button.dart';
import 'package:russia_social/components/left_profile.dart';
import 'package:russia_social/components/like_button.dart';
import 'package:russia_social/components/top_row_icons.dart';
import 'package:russia_social/widgets/constants.dart';
import 'package:russia_social/pages/home_tab/your_profile.dart';
import 'package:russia_social/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                  height: 0.5.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    topRow(context, "Previous page title", 0),
                    IconButton(
                      icon: Icon(
                        Icons.more_horiz,
                        color: buttonLeft,
                        size: 21.sp,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const YourProfile()));
                      },
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal:2.66.w, vertical: 1.h),
                  child: Container(
                    width: 100.w,
                    height: 66.h,
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
                            profile("assets/badboy.jpg", 28.w, 14.h, 30),
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
                                gradientButton("+ Subscribe"),
                                SizedBox(
                                  height: 2.h,
                                ),
                                gradientTextButton("Message")
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
                                size: 13.sp,
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
                          padding: EdgeInsets.only(left: 3.w,top: 1.h),
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
                Padding(
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
                              borderRadius: BorderRadius.circular(25)),
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
                            child: const CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage("assets/badboy.jpg"),
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
                                        width: 2.w,
                                      ),
                                      FaIcon(
                                        FontAwesomeIcons.longArrowAltRight,
                                        color: buttonLeft,
                                        size: 18.sp,

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
                )
              ],
            ),
          )),
    );
  }
}
