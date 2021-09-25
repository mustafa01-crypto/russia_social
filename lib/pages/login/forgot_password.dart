import 'package:flutter/material.dart';
import 'package:russia_social/components/app_logo.dart';
import 'package:russia_social/components/gradient_button.dart';
import 'package:russia_social/pages/login/phone_confirmation.dart';
import 'package:russia_social/widgets/constants.dart';
import 'package:russia_social/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
              padding: EdgeInsets.symmetric(horizontal: 2.66.w, vertical: 1.h),
              child: Container(
                width: 100.w,
                height: 78.8.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(1.5.w)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 2.4.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 3.w),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Forgot Password?",
                          style: loginForgotTitleStyle,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3.4.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 3.w),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Enter the email address or phone number"
                          " you used when you joined and we’ll send "
                          "you instructions to reset your password.",
                          style: forgotPasswordStyle,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3.4.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 3.w),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "For security reasons, we do NOT store"
                          " your password. So rest assured that"
                          " we will never send your password via email.",
                          style: forgotPasswordBlackStyle,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    formBox("Phone number or email", textLabel),
                    SizedBox(
                      height: 2.h,
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const PhoneConfirmation()));
                        },
                        child: gradientLoginButton("Send",86.66.w,
                          8.39.h,)),
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
