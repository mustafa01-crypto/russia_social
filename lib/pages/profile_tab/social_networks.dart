import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:russia_social/components/gradient_button.dart';
import 'package:russia_social/components/lists.dart';
import 'package:russia_social/components/social_row.dart';
import 'package:russia_social/components/top_row_icons.dart';
import 'package:russia_social/widgets/constants.dart';
import 'package:russia_social/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';

class SocialNetworks extends StatefulWidget {
  const SocialNetworks({Key? key}) : super(key: key);

  @override
  _SocialNetworksState createState() => _SocialNetworksState();
}

class _SocialNetworksState extends State<SocialNetworks> {
  String dropdownvalue = 'Facebook';

  NewObject value = itemsx.first;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: scaffoldBack,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  topRow(context, "Social Networks", 12.w),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.66.w, vertical: 1.h),
                child: Container(
                  width: 100.w,
                  height: 87.25.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.33.w),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 2.8.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.w),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Social Networks",
                              style: socialNetworkStyle,
                            )),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 2.h),
                        child: Container(
                          padding: EdgeInsets.only(left: 4.w, right: 2.w),
                          width: 86.66.w,
                          height: 8.39.h,
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            color: scaffoldBack,
                            borderRadius: BorderRadius.circular(1.86.w),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<NewObject>(
                              value: value,
                              isExpanded: true,
                              icon: Icon(
                                Icons.keyboard_arrow_down,
                                size: 18.sp,
                              ),
                              items: itemsx.map((itemsx) {
                                return DropdownMenuItem(
                                    value: itemsx,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 6.16.w,
                                          height: 6.16.w,
                                          child: SvgPicture.asset(
                                            itemsx.icon,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 3.w,
                                        ),
                                        Text(
                                          itemsx.title,
                                          style: TextStyle(
                                              color: itemsx.title == "Facebook"
                                                  ? const Color(0xFF214F94)
                                                  : itemsx.title == "Twitter"
                                                      ? const Color(0xFF389FFE)
                                                      : itemsx.title ==
                                                              "Youtube"
                                                          ? const Color(
                                                              0xFFDD4223)
                                                          : itemsx.title ==
                                                                  "Instagram"
                                                              ? Colors.pink
                                                              : Colors.white,
                                              fontSize: 14.sp),
                                        ),
                                      ],
                                    ));
                              }).toList(),
                              onChanged: (newValue) {
                                setState(() {
                                  value = newValue!;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 2.w, bottom: 2.h),
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 4.w),
                              width: 76.8.w,
                              height: 8.39.h,
                              alignment: Alignment.centerLeft,
                              decoration: BoxDecoration(
                                color: scaffoldBack,
                                borderRadius: BorderRadius.circular(1.86.w),
                              ),
                              child: TextFormField(
                                initialValue: "Enter a Nickname",
                                style: textLabel,
                                decoration: const InputDecoration(
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none),
                              ),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              "or",
                              style: fallowNameStyle,
                            )
                          ],
                        ),
                      ),
                      formBox("Url Adress", textLabel),
                      SizedBox(
                        height: 3.5.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.w),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "+ Add",
                              style: socialNetworkAddStyle,
                            )),
                      ),
                      SizedBox(
                        height: 2.8.h,
                      ),
                      socialRow(),
                      Padding(
                        padding: EdgeInsets.only(left: 4.w,top: 3.h),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Add public email",
                              style: socialNetworkStyle,
                            )),
                      ),
                      SizedBox(
                        height: 2.8.h,
                      ),
                      formBox("Url Adress", textLabel),
                      SizedBox(
                        height: 3.5.h,
                      ),
                      orangeBox("Save")
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

