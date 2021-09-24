import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:russia_social/components/app_logo.dart';
import 'package:russia_social/components/notification_profile.dart';
import 'package:russia_social/widgets/constants.dart';
import 'package:russia_social/widgets/text_widget.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:sizer/sizer.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: scaffoldBack,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 16.04.h,
                color: buttonColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 6.6.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(),
                        SizedBox(),
                        appLogo(),
                        IconButton(
                          icon: Icon(
                            Icons.person_add_alt_1_rounded,
                            color: buttonLeft,
                            size: 21.sp,
                          ),
                          onPressed: () {
                            //Add Person
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.w),
                child: Text(
                  "Track accounts",
                  style: titleStyle,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    notificationTracks("01"),
                    notificationTracks("02"),
                    notificationTracks("03"),
                    notificationTracks("04"),
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 1.h,right: 3.w),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: FaIcon(
                    FontAwesomeIcons.longArrowAltRight,
                    color: buttonLeft,
                    size: 18.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.w),
                child: Text(
                  "Notifications",
                  style: titleStyle,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              notificationBox("assets/rocky.jpg"),
              SizedBox(
                height: 2.h,
              ),
              notificationBox("assets/brad.jpg"),
              SizedBox(
                height: 2.h,
              ),
              notificationBox("assets/angel.jpg"),

            ],
          ),
        ));
  }
}
