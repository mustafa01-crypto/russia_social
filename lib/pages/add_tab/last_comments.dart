import 'package:flutter/material.dart';
import 'package:russia_social/components/add_row_box.dart';
import 'package:russia_social/widgets/constants.dart';
import 'package:russia_social/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';

import 'menu_list.dart';

class LastComments extends StatefulWidget {
  const LastComments({Key? key}) : super(key: key);

  @override
  _LastCommentsState createState() => _LastCommentsState();
}

class _LastCommentsState extends State<LastComments> {
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
                    ),
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
                    "Last Comments",
                    style: addTitleStyle,
                  ),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              columnCommentBox("Any time of year is a great time "),
              SizedBox(
                height: 2.h,
              ),
              columnCommentBox("True story, comeback  "),
              SizedBox(
                height: 2.h,
              ),
              columnCommentBox("True story, comeback  "),
              SizedBox(
                height: 3.h,
              ),
              columnCommentBox("This is love"),
              SizedBox(
                height: 3.h,
              ),
              columnCommentBox("Burası Türkiye"),
              SizedBox(
                height: 3.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
