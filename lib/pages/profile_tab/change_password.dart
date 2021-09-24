import 'package:flutter/material.dart';
import 'package:russia_social/components/gradient_button.dart';
import 'package:russia_social/components/top_row_icons.dart';
import 'package:russia_social/widgets/constants.dart';
import 'package:russia_social/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
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
                topRow(context, "Change Password", 5.w),
              ],
            ),
            SizedBox(
              height: 0.3.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
              child: Container(
                width: 100.w,
                height: 56.67.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.33.w),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 4.h,
                    ),
                    formBox("Old", textLabel),
                    SizedBox(
                      height: 2.5.h,
                    ),
                    formBox("New Password", textLabel),
                    SizedBox(
                      height: 2.5.h,
                    ),
                    formBox("Repeat New Password", textLabel),
                    SizedBox(
                      height: 2.5.h,
                    ),
                    orangeBox("Change"),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      "Forgot Password",
                      style: socialNetworkAddStyle,
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),

    );
  }
}
