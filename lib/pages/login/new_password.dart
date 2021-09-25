import 'package:flutter/material.dart';
import 'package:russia_social/components/app_logo.dart';
import 'package:russia_social/components/gradient_button.dart';
import 'package:russia_social/widgets/constants.dart';
import 'package:russia_social/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  _NewPasswordState createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: scaffoldBack,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 3.7.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                appLogo(),
              ],
            ),
            SizedBox(
              height: 3.7.h,
            ),
            Padding(
              padding:
              EdgeInsets.symmetric(horizontal: 2.66.w, vertical: 1.h),
              child: Container(
                width: 100.w,
                height: 60.11.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(1.5.w)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 5.24.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 3.w,
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "New password",
                          style: newPasswordStyle,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2.24.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 3.w, right: 10.w),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Enter a new password",
                          style: forgotPasswordStyle,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),

                    formBox("New password", textLabel),
                    SizedBox(
                      height: 2.h,
                    ),
                    formBox("Repeat new password", textLabel),

                    SizedBox(
                      height: 4.h,
                    ),
                    gradientLoginButton("Save",86.66.w, 7.39.h,),

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
