import 'package:flutter/material.dart';
import 'package:russia_social/components/gradient_button.dart';
import 'package:russia_social/components/left_profile.dart';
import 'package:russia_social/components/top_row_icons.dart';
import 'package:russia_social/widgets/constants.dart';
import 'package:russia_social/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';

class PersonalInformation extends StatefulWidget {
  const PersonalInformation({Key? key}) : super(key: key);

  @override
  _PersonalInformationState createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
  String dropdownvalue = 'Turkey';
  var items = [
    'Turkey',
    'United States',
    'Greece',
    'Germany',
    'Frence',
    'England'
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
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  topRow(context, "Personal Information", 5.w),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.66.w, vertical: 1.h),
                child: Container(
                  width: 100.w,
                  height: 169.86.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.33.w),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 1.6.h,
                      ),
                      profile("assets/brad.jpg", 48.w, 30.h, 30),
                      Text(
                        "Edit Avatar",
                        style: userNickName,
                      ),
                      SizedBox(
                        height: 3.3.h,
                      ),
                      formLabel("First Name"),
                      SizedBox(
                        height: 1.6.h,
                      ),
                      formBox("Peter", profileHintStyle),
                      SizedBox(
                        height: 2.8.h,
                      ),
                      formLabel("Last Name"),
                      SizedBox(
                        height: 1.6.h,
                      ),
                      formBox("Houel", profileHintStyle),
                      SizedBox(
                        height: 2.8.h,
                      ),
                      formLabel("Login"),
                      SizedBox(
                        height: 1.6.h,
                      ),
                      formBox("UXjdjaDJJ33J1XDAA", profileHintStyle),
                      SizedBox(
                        height: 2.8.h,
                      ),
                      formLabel("Email"),
                      SizedBox(
                        height: 1.6.h,
                      ),
                      formBox("peterhouel@gmail.com", profileHintStyle),
                      SizedBox(
                        height: 2.8.h,
                      ),
                      formLabel("Country"),
                      SizedBox(
                        height: 1.6.h,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 4.w,right: 2.w),
                        width: 86.66.w,
                        height: 8.39.h,
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          color: scaffoldBack,
                          borderRadius: BorderRadius.circular(2.66.w),
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
                        height: 2.8.h,
                      ),
                      formLabel("City"),
                      SizedBox(
                        height: 1.6.h,
                      ),
                      formBox("New York", profileHintStyle),
                      SizedBox(
                        height: 2.8.h,
                      ),
                      formLabel("About"),
                      SizedBox(
                        height: 1.6.h,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 4.w),
                        width: 90.w,
                        height: 22.63.h,
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
                        height: 4.h,
                      ),
                      orangeBox("Save")
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
