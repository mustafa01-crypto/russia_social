import 'package:flutter/material.dart';
import 'package:russia_social/components/top_row_icons.dart';
import 'package:russia_social/pages/personal_information.dart';
import 'package:russia_social/pages/social_networks.dart';
import 'package:russia_social/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';

import '../constants.dart';

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
                padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
                child: Container(
                  width: 100.w,
                  height: 76.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 3.w,
                        vertical: 3.2.h,
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
                  ]),
                ),
              ),
            ],
          )),
    );
  }
}
