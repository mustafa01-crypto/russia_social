import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:russia_social/components/app_logo.dart';
import 'package:russia_social/components/gradient_button.dart';
import 'package:russia_social/widgets/constants.dart';
import 'package:russia_social/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';

class AddFeedbacks extends StatefulWidget {
  const AddFeedbacks({Key? key}) : super(key: key);

  @override
  _AddFeedbacksState createState() => _AddFeedbacksState();
}

class _AddFeedbacksState extends State<AddFeedbacks> {
  bool _switchValue = true;
  bool _switchValue2 = false;

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
                      height: 4.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [appLogo()],
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
                    "Add Feedback",
                    style: addTitleStyle,
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 2.66.w, vertical: 1.h),
                child: Container(
                  width: 100.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.33.w),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 1.5.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.w),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Title Post",
                              style: socialNetworkStyle,
                            )),
                      ),
                      SizedBox(
                        height: 1.9.h,
                      ),
                      formBox("Enter Title", textLabel),
                      SizedBox(
                        height: 1.9.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.w),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Start Story",
                              style: socialNetworkStyle,
                            )),
                      ),
                      SizedBox(
                        height: 1.9.h,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 5.33.w),
                        width: 86.66.w,
                        height: 16.39.h,
                        alignment: Alignment.topLeft,
                        decoration: BoxDecoration(
                          color: scaffoldBack,
                          borderRadius: BorderRadius.circular(2.66.w),
                        ),
                        child: TextFormField(
                          initialValue: "Enter story",
                          style: textLabel,
                          decoration: const InputDecoration(
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 2.66.w, vertical: 1.h),
                child: Container(
                  width: 100.w,
                  height: 20.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.33.w),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 1.5.h,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 3.w, right: 3.w, top: 3.h),
                        child: Row(
                          children: [
                            Text(
                              "Upload Photo",
                              style: socialNetworkStyle,
                            ),
                            SizedBox(
                              width: 54.w,
                            ),
                            Text(
                              "0/10",
                              style: bodyDateStyle,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 3.5.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 3.w),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: DottedBorder(
                            color: buttonLeft,
                            borderType: BorderType.RRect,
                            radius: const Radius.circular(12),
                            padding: EdgeInsets.all(4.w),
                            child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2.66.w)),
                                child: Icon(
                                  Icons.add,
                                  color: buttonLeft,
                                  size: 21.sp,
                                )),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 2.66.w, vertical: 1.h),
                child: Container(
                  width: 100.w,
                  height: 8.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.33.w),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 15.w),
                        child: Text(
                          "+  Add information about person",
                          style: editProfileOrangeStyle,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 2.66.w, vertical: 1.h),
                child: Container(
                  width: 100.w,
                  height: 18.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.33.w),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 2.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.w),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Add Tags",
                              style: socialNetworkStyle,
                            )),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      bottomSheetForm("Enter tag name", textLabel),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Terms & Conditions",
                      style: bodyEmailStyle,
                    ),
                    CupertinoSwitch(
                      value: _switchValue,
                      activeColor: Colors.white,
                      trackColor: Colors.white,
                      thumbColor: switchColor,
                      onChanged: (value) {
                        setState(() {
                          _switchValue = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Stay anonymous",
                      style: bodyEmailStyle,
                    ),
                    CupertinoSwitch(
                      value: _switchValue2,
                      activeColor: Colors.white,
                      trackColor: Colors.white,
                      thumbColor: switchColor,
                      onChanged: (value) {
                        setState(() {
                          _switchValue2 = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Align(
                  alignment: Alignment.topCenter,
                  child: gradientLoginButton("Publicate", 86.66.w, 7.94.h)),
              SizedBox(
                height: 2.h,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "Save Draft",
                  style: socialNetworkAddStyle,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
