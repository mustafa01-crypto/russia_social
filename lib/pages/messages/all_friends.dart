import 'package:flutter/material.dart';
import 'package:russia_social/components/left_profile.dart';
import 'package:russia_social/components/notification_profile.dart';
import 'package:russia_social/components/top_row_icons.dart';
import 'package:russia_social/pages/messages/send_message.dart';
import 'package:russia_social/widgets/constants.dart';
import 'package:russia_social/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';

class AllFriends extends StatefulWidget {
  const AllFriends({Key? key}) : super(key: key);

  @override
  _AllFriendsState createState() => _AllFriendsState();
}

class _AllFriendsState extends State<AllFriends> {
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  topRow(context, "Messages", 17.w),
                  IconButton(
                    icon: Icon(
                      Icons.more_horiz,
                      color: buttonLeft,
                      size: 21.sp,
                    ),
                    onPressed: () {
                      //
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                          const SendMessage()));
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.66.w),
                  child: Container(
                    width: 94.66.w,
                    height: 11.59.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.33.w)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            profile("assets/rocky.jpg", 15.w, 15.w, 15.w),
                            Positioned(
                              right: 1.7.w,
                              bottom: 0.2.h,
                              child: Container(
                                width: 5.w,
                                height: 5.w,
                                decoration:  BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white,
                                        width: 3
                                    ),
                                    shape: BoxShape.circle,
                                    image:   const DecorationImage(
                                        image: AssetImage("assets/top.png"),
                                      fit: BoxFit.cover
                                    )
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Peter Rollins",
                                  style: socialNetworkStyle,
                                ),
                                Text(
                                  "12:01 pm",
                                  style: bodyDateStyle,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 0.7.h,
                            ),
                            Text(
                              "Hi, i`m Peter. And I Introvert...",
                              style: userNickName,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              messageBox("assets/angel.jpg", fallowNameStyle),
              SizedBox(
                height: 2.h,
              ),
              messageBox("assets/uygun.png", fallowNameStyle),
              SizedBox(
                height: 2.h,
              ),
              messageBox("assets/star.png", fallowNameStyle),
              SizedBox(
                height: 2.h,
              ),
              messageBox("assets/badboy.jpg", fallowNameStyle),
              SizedBox(
                height: 2.h,
              ),
              messageBox("assets/brad.jpg", fallowNameStyle),
              SizedBox(
                height: 2.h,
              ),
              messageBox("assets/brad.jpg", fallowNameStyle),
              SizedBox(
                height: 2.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
