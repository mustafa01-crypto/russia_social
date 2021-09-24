import 'package:flutter/material.dart';
import 'package:russia_social/components/app_logo.dart';
import 'package:russia_social/components/gradient_button.dart';
import 'package:russia_social/widgets/constants.dart';
import 'package:russia_social/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';

import 'new_password.dart';

class PhoneConfirmation extends StatefulWidget {
  const PhoneConfirmation({Key? key}) : super(key: key);

  @override
  _PhoneConfirmationState createState() => _PhoneConfirmationState();
}

class _PhoneConfirmationState extends State<PhoneConfirmation> {
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
                height: 3.7.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios,color: buttonLeft,size: 18.sp,),

                    onPressed: (){
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(
                    width: 17.w,
                  ),
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
                  height: 82.8.h,
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
                            "Phone number confirmation",
                            style: loginForgotTitleStyle,
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
                            "Enter the code sent to you by phone number",
                            style: forgotPasswordStyle,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Container(
                        constraints: const BoxConstraints(maxWidth: 500),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: 18.66.w,
                              width: 10.04.h,
                              color: scaffoldBack,
                              child: const Center(
                                  child: Text(
                                "",
                                style: TextStyle(color: Colors.black),
                              )),
                            ),
                            Container(
                              height: 18.66.w,
                              width: 10.04.h,
                              color: scaffoldBack,
                              child: const Center(
                                  child: Text(
                                "",
                                style: TextStyle(color: Colors.black),
                              )),
                            ),
                            Container(
                              height: 18.66.w,
                              width: 10.04.h,
                              color: scaffoldBack,
                              child: const Center(
                                  child: Text(
                                "",
                                style: TextStyle(color: Colors.black),
                              )),
                            ),
                            Container(
                              height: 18.66.w,
                              width: 10.04.h,
                              color: scaffoldBack,
                              child: const Center(
                                  child: Text(
                                "",
                                style: TextStyle(color: Colors.black),
                              )),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const NewPassword()));
                          },
                          child: gradientLoginButton("Confirm")),
                      SizedBox(
                        height: 25.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "You can send a new one in ",
                            style: forgotPasswordStyle,
                          ),
                          Text(
                            "40 ",
                            style: userNickName,
                          ),
                          Text(
                            "seconds",
                            style: forgotPasswordStyle,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
