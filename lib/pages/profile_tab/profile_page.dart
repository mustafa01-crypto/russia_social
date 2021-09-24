import 'package:flutter/material.dart';
import 'package:russia_social/components/top_row_icons.dart';
import 'package:russia_social/pages/profile_tab/open_notifications.dart';
import 'package:russia_social/pages/profile_tab/personal_information.dart';
import 'package:russia_social/pages/profile_tab/social_networks.dart';
import 'package:russia_social/pages/profile_tab/support.dart';
import 'package:russia_social/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/constants.dart';
import 'change_password.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: scaffoldBack,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  topRow(context, "Edit Profile", 20.w),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.66.w, vertical: 1.h),
                child: Container(
                  width: 100.w,
                  height: 76.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(children: [
                    SizedBox(
                      height: 5.39.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 3.w,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const PersonalInformation()));
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.person,
                              color: iconColor,
                              size: 18.sp,
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              "Personal Information",
                              style: editProfileStyle,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.39.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 3.w,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const SocialNetworks()));
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.share,
                              color: iconColor,
                              size: 18.sp,
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              "Social Networks",
                              style: editProfileStyle,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.39.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 3.w,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const ChangePassword()));
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.lock,
                              color: iconColor,
                              size: 18.sp,
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              "Change Password",
                              style: editProfileStyle,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.39.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 3.w,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const OpenNotification()));
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.notifications,
                              color: iconColor,
                              size: 18.sp,
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              "Notifications",
                              style: editProfileStyle,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.39.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 3.w,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const Support()));
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.contact_support_rounded,
                              color: iconColor,
                              size: 18.sp,
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              "Support",
                              style: editProfileStyle,
                            )
                          ],
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ],
          )),
    );
  }
}
