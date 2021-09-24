import 'package:flutter/material.dart';
import 'package:russia_social/components/gradient_button.dart';
import 'package:russia_social/components/top_row_icons.dart';
import 'package:russia_social/widgets/constants.dart';
import 'package:russia_social/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';

class Support extends StatefulWidget {
  const Support({Key? key}) : super(key: key);

  @override
  _SupportState createState() => _SupportState();
}

class _SupportState extends State<Support> {
  bool isChecked = false;
  String dropdownvalue = 'Type of question';
  var items = [
    'Type of question',
    'Money',
    'Price',
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
                topRow(context, "Support", 21.w),
              ],
            ),
            SizedBox(
              height: 1.2.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.66.w, vertical: 1.h),
              child: Container(
                width: 100.w,
                height: 85.6.h,
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(5.33.w)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 1.5.h,
                    ),
                    formBox("Name", textLabel),
                    SizedBox(
                      height: 2.h,
                    ),
                    formBox("Email", textLabel),
                    SizedBox(
                      height: 2.h,
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
                      height: 2.h,
                    ),
                    formBox("Title", textLabel),
                    SizedBox(
                      height: 2.h,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 4.w),
                      width: 90.w,
                      height: 18.89.h,
                      alignment: Alignment.topLeft,
                      decoration: BoxDecoration(
                        color: scaffoldBack,
                        borderRadius: BorderRadius.circular(1.86.w),
                      ),
                      child: TextFormField(
                        initialValue: "Question",
                        style: textLabel,
                        decoration: const InputDecoration(
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    orangeBox("Send"),
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
                        Text("Terms & Conditions",style: textLabelSupport,)
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
