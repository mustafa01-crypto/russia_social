import 'package:flutter/material.dart';
import 'package:russia_social/components/gradient_button.dart';
import 'package:russia_social/components/left_profile.dart';
import 'package:russia_social/components/top_row_icons.dart';
import 'package:russia_social/constants.dart';
import 'package:russia_social/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';

class PersonalInformation extends StatefulWidget {
  const PersonalInformation({Key? key}) : super(key: key);

  @override
  _PersonalInformationState createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
  String dropdownvalue = 'Apple';
  var items = [
    'Apple',
    'Banana',
    'Grapes',
    'Orange',
    'watermelon',
    'Pineapple'
  ];

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
                height: 5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  topRow(context, "Personal Information", 5.w),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
                child: Container(
                  width: 100.w,
                  height: 144.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 1.h,
                      ),
                      profile("assets/brad.jpg", 40.w, 24.h, 30),
                      Text(
                        "Edit Avatar",
                        style: userNickName,
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      formLabel("First Name"),
                      SizedBox(
                        height: 1.h,
                      ),
                      formBox("Peter"),
                      SizedBox(
                        height: 2.h,
                      ),
                      formLabel("Last Name"),
                      SizedBox(
                        height: 1.h,
                      ),
                      formBox("Houel"),
                      SizedBox(
                        height: 2.h,
                      ),
                      formLabel("Login"),
                      SizedBox(
                        height: 1.h,
                      ),
                      formBox("UXjdjaDJJ33J1XDAA"),
                      SizedBox(
                        height: 2.h,
                      ),
                      formLabel("Email"),
                      SizedBox(
                        height: 1.h,
                      ),
                      formBox("peterhouel@gmail.com"),
                      SizedBox(
                        height: 2.h,
                      ),
                      formLabel("Country"),
                      SizedBox(
                        height: 1.h,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 4.w,right: 2.w),
                        width: 90.w,
                        height: 7.h,
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          color: scaffoldBack,
                          borderRadius: BorderRadius.circular(10),
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
                        height: 2.h,
                      ),
                      formLabel("City"),
                      SizedBox(
                        height: 1.h,
                      ),
                      formBox("New York"),
                      SizedBox(
                        height: 2.h,
                      ),
                      formLabel("About"),
                      SizedBox(
                        height: 1.h,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 4.w),
                        width: 90.w,
                        height: 25.h,
                        alignment: Alignment.topLeft,
                        decoration: BoxDecoration(
                          color: scaffoldBack,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          initialValue: "Hi, i`m Peter. And I Introvert...",
                          style: profileHintStyle,
                          decoration: const InputDecoration(
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none),
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Container(
                        width: 90.w,
                        height: 6.4.h,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: buttonLeft),
                        child: Text(
                          "Save",
                          style: buttonName,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
