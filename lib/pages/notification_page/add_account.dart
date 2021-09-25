import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:russia_social/components/gradient_button.dart';
import 'package:russia_social/components/top_row_icons.dart';
import 'package:russia_social/widgets/constants.dart';
import 'package:russia_social/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';

class AddAccount extends StatefulWidget {
  const AddAccount({Key? key}) : super(key: key);

  @override
  _AddAccountState createState() => _AddAccountState();
}

class _AddAccountState extends State<AddAccount> {
  bool isChecked = false;
  String dropdownvalue = 'Country';
  var items = [
    'Country',
    'Turkey',
    'Russia',
    'England',
  ];

  String dropdownvalue2 = 'Facebook';

  static final List<NewObject> itemsx = <NewObject>[
    NewObject(
      'Facebook',
      "assets/svg/facebook.svg",
    ),
    NewObject(
      'Twitter',
      "assets/svg/twitter.svg",
    ),
    NewObject(
      'Youtube',
      "assets/svg/youtube.svg",
    ),
    NewObject(
      'Instagram',
      "assets/svg/instagram.svg",
    ),
  ];
  NewObject value = itemsx.first;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: scaffoldBack,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 1.w,
                  ),
                  topRow(context, "Add track account", 8.w),
                ],
              ),
              SizedBox(
                height: 0.4.h,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 2.66.w, vertical: 1.h),
                child: Container(
                  width: 100.w,
                  height: 130.93.h,
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
                              "About person",
                              style: socialNetworkStyle,
                            )),
                      ),
                      SizedBox(
                        height: 1.9.h,
                      ),
                      formBox("First Name", textLabel),
                      SizedBox(
                        height: 1.9.h,
                      ),
                      formBox("Last Name", textLabel),
                      SizedBox(
                        height: 1.9.h,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 4.w, right: 2.w),
                        width: 86.66.w,
                        height: 8.39.h,
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          color: scaffoldBack,
                          borderRadius: BorderRadius.circular(1.86.w),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            value: dropdownvalue,
                            isExpanded: true,
                            icon: Icon(
                              Icons.keyboard_arrow_down,
                              size: 18.sp,
                            ),
                            items: items.map((String items) {
                              return DropdownMenuItem(
                                  value: items, child: Text(items));
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownvalue = newValue!;
                              });
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 1.9.h,
                      ),
                      formBox("City", textLabel),
                      SizedBox(
                        height: 1.9.h,
                      ),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 5.w,
                          ),
                          Container(
                            width: 34.66.w,
                            height: 5.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                border: Border.all(color: borderColor),
                                color: Colors.white),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 1.w,
                                ),
                                SizedBox(
                                    width: 4.56.w,
                                    height: 4.56.w,
                                    child: SvgPicture.asset(
                                      "assets/svg/facebook.svg",
                                      fit: BoxFit.cover,
                                    )),
                                SizedBox(
                                  width: 1.4.w,
                                ),
                                Text(
                                  "Facebook",
                                  style: socialNetworkCancelStyle,
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.cancel,
                                    color: iconColor,
                                    size: 12.sp,
                                  ),
                                  onPressed: () {},
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 5.54.w,
                          ),
                          Container(
                            width: 34.66.w,
                            height: 5.54.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                border: Border.all(color: borderColor),
                                color: Colors.white),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 1.w,
                                ),
                                SizedBox(
                                    width: 4.w,
                                    height: 4.w,
                                    child: SvgPicture.asset(
                                      "assets/svg/youtube.svg",
                                      fit: BoxFit.cover,
                                    )),
                                SizedBox(
                                  width: 1.4.w,
                                ),
                                Text(
                                  "Youtube",
                                  style: socialNetworkCancelStyle,
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.cancel,
                                    color: buttonLeft,
                                    size: 12.sp,
                                  ),
                                  onPressed: () {},
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.w, top: 3.h),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Add public email",
                              style: socialNetworkStyle,
                            )),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      formBox("Url Adress", textLabel),
                      SizedBox(
                        height: 2.h,
                      ),
                      gradientLoginButton("Add account", 86.66.w, 7.94.h),
                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                        "Cancel",
                        style: socialNetworkAddStyle,
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

class NewObject {
  final String title;
  final String icon;

  NewObject(this.title, this.icon);
}
