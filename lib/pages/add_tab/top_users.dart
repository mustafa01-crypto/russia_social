import 'package:flutter/material.dart';
import 'package:russia_social/components/search_box.dart';
import 'package:russia_social/widgets/constants.dart';
import 'package:russia_social/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';

import 'give_feedback.dart';
import 'menu_list.dart';

class TopUsers extends StatefulWidget {
  const TopUsers({Key? key}) : super(key: key);

  @override
  _TopUsersState createState() => _TopUsersState();
}

class _TopUsersState extends State<TopUsers> {
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const GiveFeedbacks()));
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
                    "Top Users",
                    style: addTitleStyle,
                  ),
                ),
              ),
              searchTopBox("assets/uygun.png", "Memati Baş", "Türkiye Adana",
                  "45 followers", "assets/star.png"),
              searchTopBox("assets/brad.jpg", "Brad Pid", "Germany Doshland",
                  "45 followers", "assets/number.png"),
              searchTopBox("assets/angel.jpg", "Agelina Jollie", "USA Miami",
                  "45 followers", "assets/n3.png"),
              searchTopBox("assets/rocky.jpg", "Slywester Stalline",
                  "Türkiye Adana", "45 followers", "assets/n4.png"),
            ],
          ),
        ),
      ),
    );
  }
}
