import 'package:flutter/material.dart';
import 'package:russia_social/components/app_logo.dart';
import 'package:russia_social/components/gradient_button.dart';
import 'package:russia_social/widgets/constants.dart';
import 'package:russia_social/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: scaffoldBack,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 1.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  appLogo(),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.66.w, vertical: 1.h),
                child: Container(
                  width: 100.w,
                  height: 71.26.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(1.5.w)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 3.w),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Sign up",
                            style: loginTitleStyle,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 0.4.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 3.w),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Unlock the best of Exdating",
                            style: bodyTextStyle,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      formBox("Phone or email", textLabel),
                      SizedBox(
                        height: 2.h,
                      ),
                      formBox("Password", textLabel),
                      SizedBox(
                        height: 2.h,
                      ),
                      formBox("Repeat password", textLabel),
                      SizedBox(
                        height: 2.h,
                      ),
                      gradientLoginButton("Sign Up"),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                            checkColor: Colors.white,
                            activeColor: buttonLeft,
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                          ),
                          Text(
                            "Terms & Conditions",
                            style: textLabelSupport,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                "or sign up with:",
                style: bodyDateStyle,
              ),
              SizedBox(
                height: 0.3.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  socialLoginButtons(),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: textLabelSupport,
                  ),
                  Text(
                    "Login in",
                    style: socialNetworkAddStyle,
                  ),
                ],
              ),
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
