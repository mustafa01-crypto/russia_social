import 'package:flutter/material.dart';
import 'package:russia_social/components/add_row_box.dart';
import 'package:russia_social/components/gradient_button.dart';
import 'package:russia_social/components/shared_post.dart';
import 'package:russia_social/pages/add_tab/top_users.dart';
import 'package:russia_social/widgets/constants.dart';
import 'package:russia_social/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';

import 'last_comments.dart';
import 'menu_list.dart';

class AllFeedbacks extends StatefulWidget {
  const AllFeedbacks({Key? key}) : super(key: key);

  @override
  _AllFeedbacksState createState() => _AllFeedbacksState();
}

class _AllFeedbacksState extends State<AllFeedbacks> {
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.menu_outlined,
                              color: buttonLeft,
                              size: 6.4.w,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const AddMenu()));
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
                              size: 6.4.w,
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
                  height: 2.h,
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
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TopUsers()));
                      },
                      child: Text(
                        "More",
                        style: userNickName,
                      ),
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
                      rowSubscribeBox("assets/brad.jpg", "BradPidd",
                          "99 feedbacks", "assets/star.png"),
                      rowSubscribeBox("assets/angel.jpg", "Angela",
                          "248 feedbacks", "assets/number.png"),
                      rowSubscribeBox("assets/brad.jpg", "Rocky",
                          "157 feedbacks", "assets/n3.png"),
                      rowSubscribeBox("assets/uygun.png", "Memati",
                          "4642 feedbacks", "assets/n4.png"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                sharedPost(),
                SizedBox(
                  height: 3.h,
                ),
                sharedPost(),
                SizedBox(
                  height: 3.h,
                ),
                Align(
                    alignment: Alignment.center,
                    child: GestureDetector(
                        onTap: () {},
                        child: gradientAddButton("See More", 28.w, 3.99.h))),
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
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LastComments()));
                        },
                        child: Text(
                          "More",
                          style: userNickName,
                        ),
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
                      rowCommentBox("My love"),
                      rowCommentBox("My school"),
                      rowCommentBox("My meetings"),
                      rowCommentBox("My More"),
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
