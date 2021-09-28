import 'package:flutter/material.dart';
import 'package:russia_social/components/notification_profile.dart';
import 'package:russia_social/components/top_row_icons.dart';
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
                  topRow(context, "Messages",17.w),
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
              messageBox("assets/rocky.jpg",userNickName),
              SizedBox(
                height: 2.h,
              ),
              messageBox("assets/angel.jpg",fallowNameStyle),
              SizedBox(
                height: 2.h,
              ),
              messageBox("assets/uygun.png",fallowNameStyle),
              SizedBox(
                height: 2.h,
              ),
              messageBox("assets/star.png",fallowNameStyle),
              SizedBox(
                height: 2.h,
              ),
              messageBox("assets/badboy.jpg",fallowNameStyle),
              SizedBox(
                height: 2.h,
              ),
              messageBox("assets/brad.jpg",fallowNameStyle),
              SizedBox(
                height: 2.h,
              ),
              messageBox("assets/brad.jpg",fallowNameStyle),
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
