import 'package:flutter/material.dart';
import 'package:russia_social/components/app_logo.dart';
import 'package:russia_social/components/gradient_button.dart';
import 'package:russia_social/pages/login/forgot_password.dart';
import 'package:russia_social/pages/login/sign_up.dart';
import 'package:russia_social/pages/tabs_page.dart';
import 'package:russia_social/widgets/constants.dart';
import 'package:russia_social/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
              appLogo(),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 2.66.w, vertical: 1.h),
                child: Container(
                    width: 100.w,
                    height: 64.61.h,
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
                              "Login in",
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
                              "Enter your details below to login in",
                              style: bodyTextStyle,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        formBox("Phone number or Email", textLabel),
                        SizedBox(
                          height: 2.h,
                        ),
                        formBox("Password", textLabel),
                        SizedBox(
                          height: 2.h,
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const TabsPage()));
                            },
                            child: gradientLoginButton("Sign In")),
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
                              "Remember me",
                              style: textLabelSupport,
                            )
                          ],
                        )
                      ],
                    )),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                "or sign up with:",
                style: bodyDateStyle,
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
              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ForgotPassword()));
                },
                child: Text(
                  "Forgot password?",
                  style: socialNetworkAddStyle,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "No Account? ",
                    style: textLabelSupport,
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUp()));
                    },
                    child: Text(
                      "Sign Up",
                      style: socialNetworkAddStyle,
                    ),
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
