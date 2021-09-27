import 'package:flutter/material.dart';
import 'package:russia_social/components/gradient_button.dart';
import 'package:russia_social/components/shared_post.dart';
import 'package:russia_social/widgets/constants.dart';
import 'package:russia_social/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';

class AddPage extends StatefulWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  List<String> tags = ["Tags", "Country", "3 City", "Social Network"];

  int value = 2;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: scaffoldBack,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: buttonColor,
                  height: 12.04.h,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 3.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.menu_open_outlined,
                              color: buttonLeft,
                              size: 21.sp,
                            ),
                            onPressed: () {
                              //
                            },
                          ),
                          SizedBox(
                              width: 50.w,
                              height: 7.1.h,
                              child: Image.asset(
                                "assets/logo.png",
                                fit: BoxFit.cover,
                              )),
                          IconButton(
                            icon: Icon(
                              Icons.mail_outline_outlined,
                              color: buttonLeft,
                              size: 21.sp,
                            ),
                            onPressed: () {
                              //
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.w),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "All Feedbacks",
                      style: addTitleStyle,
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                        tags.length,
                        (index) => GestureDetector(
                              onTap: () {
                                setState(() {
                                  value = index;
                                });
                              },
                              child: Text(
                                tags[index],
                                style: TextStyle(
                                    color: value == index
                                        ? buttonLeft
                                        : titleColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.sp),
                              ),
                            )),
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                sharedPost(),
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Top Users for expanding",
                      style: addTitleStyle,
                    ),
                    Text(
                      "More",
                      style: userNickName,
                    ),
                  ],
                ),
                SizedBox(
                  height: 1.h,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
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
                      ),
                      Padding(
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
                                mainAxisAlignment: MainAxisAlignment.start,
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
                              top: -5.w,
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
                      ),
                      Padding(
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
                                mainAxisAlignment: MainAxisAlignment.start,
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
                              top: -5.w,
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
                      ),
                    ],
                  ),
                ),
                sharedPost(),
                SizedBox(
                  height: 3.h,
                ),
                sharedPost(),
                Align(
                    alignment: Alignment.center,
                    child: gradientAddButton("See More", 28.w, 3.6.h)),
                SizedBox(
                  height: 3.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Last Comments",
                        style: addTitleStyle,
                      ),
                      SizedBox(
                        width: 45.w,
                      ),
                      Text(
                        "More",
                        style: userNickName,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left: 2.66.w),
                        child: Container(
                          width: 75.2.w,
                          height: 28.h,
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
                                  "My first meeting with love",
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
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: 2.66.w),
                        child: Container(
                          width: 75.2.w,
                          height: 28.h,
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
                                  "My first meeting with love",
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
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: 2.66.w),
                        child: Container(
                          width: 75.2.w,
                          height: 28.h,
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
                                  "My first meeting with love",
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
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: 2.66.w),
                        child: Container(
                          width: 75.2.w,
                          height: 28.h,
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
                                  "My first meeting with love",
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
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
              ],
            ),
          )),
    );
  }
}
