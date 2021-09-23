import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:russia_social/components/top_row_icons.dart';
import 'package:russia_social/widgets/constants.dart';
import 'package:russia_social/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';

class OpenNotification extends StatefulWidget {
  const OpenNotification({Key? key}) : super(key: key);

  @override
  _OpenNotificationState createState() => _OpenNotificationState();
}

class _OpenNotificationState extends State<OpenNotification> {
  bool _switchValue = true;
  bool _switchValue2 = false;

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
                topRow(context, "Notifications", 5.w),
              ],
            ),
            SizedBox(
              height: 3.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
              child: Container(
                width: 100.w,
                height: 18.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 3.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Send email notifications",
                            style: bodyEmailStyle,
                          ),
                          CupertinoSwitch(
                            value: _switchValue,
                            activeColor: switchColor2,
                            trackColor: _switchValue == false
                                ? switchColor2
                                : scaffoldBack,
                            thumbColor: _switchValue == false
                                ? switchColor
                                : buttonLeft,
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
                      padding: EdgeInsets.symmetric(horizontal: 4.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Send phone notifications",
                            style: bodyEmailStyle,
                          ),
                          CupertinoSwitch(
                            value: _switchValue2,
                            activeColor: _switchValue2 == false
                                ? switchColor2
                                : scaffoldBack,
                            trackColor: _switchValue2 == false
                                ? switchColor2
                                : scaffoldBack,
                            thumbColor: _switchValue2 == false
                                ? switchColor
                                : buttonLeft,
                            onChanged: (value) {
                              setState(() {
                                _switchValue2 = value;
                              });
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
