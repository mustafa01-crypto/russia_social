import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:russia_social/constants.dart';
import 'package:russia_social/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> assetSvg = [
    "assets/svg/youtube.svg",
    "assets/svg/facebook.svg",
    "assets/svg/twitter.svg",
    "assets/svg/instagram.svg",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: scaffoldBack,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: buttonLeft,
                    size: 21.sp,
                  ),
                  Text(
                    "Previous page title",
                    style: titleStyle,
                  ),
                  SizedBox(
                    width: 14.w,
                  ),
                  Icon(
                    Icons.more_horiz,
                    color: buttonLeft,
                    size: 21.sp,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
                child: Container(
                  width: 100.w,
                  height: 61.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
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
                          Padding(
                            padding: EdgeInsets.only(left: 4.w, right: 2.w),
                            child: Container(
                              width: 28.w,
                              height: 14.h,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: const CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.white,
                                backgroundImage:
                                    AssetImage("assets/badboy.jpg"),
                              ),
                            ),
                          ),
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
                              Container(
                                width: 50.w,
                                height: 5.h,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    gradient: buttonGradient),
                                child: Text(
                                  "+ Subscribe",
                                  style: buttonName,
                                ),
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              Container(
                                width: 50.w,
                                height: 5.h,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: buttonColor,
                                ),
                                child: Text("Message",
                                    style: GoogleFonts.roboto(
                                      fontSize: 9.sp,
                                      foreground: Paint()..shader = textShader,
                                      fontWeight: FontWeight.w500,
                                    )),
                              )
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
                        padding: EdgeInsets.only(left: 2.w),
                        child: Text(
                          "petterrollllins@gmail.com",
                          style: bodyEmailStyle,
                        ),
                      ),
                      Row(
                          children: List.generate(
                        4,
                        (index) => Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 2.w, vertical: 2.h),
                          child: SizedBox(
                              width: 10.w,
                              height: 10.w,
                              child: SvgPicture.asset(assetSvg[index])),
                        ),
                      ))
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
