import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:russia_social/components/add_tag.dart';
import 'package:russia_social/components/app_logo.dart';
import 'package:russia_social/components/gradient_button.dart';
import 'package:russia_social/widgets/constants.dart';
import 'package:russia_social/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';

class AddFeedBackDetails extends StatefulWidget {
  const AddFeedBackDetails({Key? key}) : super(key: key);

  @override
  _AddFeedBackDetailsState createState() => _AddFeedBackDetailsState();
}

class _AddFeedBackDetailsState extends State<AddFeedBackDetails> {
  bool _switchValue = true;
  bool _switchValue2 = false;


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
                  height: 67.h,
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
                          padding: EdgeInsets.only(left: 5.33.w,right: 3.w),
                          width: 86.66.w,
                          height: 45.39.h,
                          alignment: Alignment.topLeft,
                          decoration: BoxDecoration(
                            color: scaffoldBack,
                            borderRadius: BorderRadius.circular(2.66.w),
                          ),
                          child: Text(
                            "So, it is clear that systems analysis"
                            " flips constructive rating. The competitor"
                            " neutralizes the rating. However, placement"
                            " produces an experimental placement plan"
                            " regardless of cost. The creation of a committed"
                            " buyer actually specifies the advertising layout,"
                            " drawing on the experience of Western colleagues."
                            " Creativity, without changing the concept outlined"
                            " above, attracts a tactical competitor everywhere.",
                            style: commentAddTextStyle,
                          )),
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
                      Row(
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(left: 3.w),
                                child: Container(
                                  width: 15.w,
                                  height: 15.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(2.66.w),
                                      image: const DecorationImage(
                                        image: AssetImage("assets/rocky.jpg"),
                                        fit: BoxFit.cover,
                                      )
                                  ),
                                ),
                              ),

                              Positioned(
                                  right: 1.w,
                                  top: 1.w,
                                  child: Icon(Icons.cancel,color: bodyDateColor,size: 13.sp,))
                            ],
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
                          ),
                        ],
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
                  height: 95.93.h,
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
                        padding:  EdgeInsets.only(left: 3.w),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 3.w,vertical: 3.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1.86.w),
                              border: Border.all(
                                color: buttonLeft,
                              )
                            ),
                            child: Text("+ Add",style: userNickName,),
                          ),
                        ),
                      ),



                      SizedBox(
                        height: 2.8.h,
                      ),


                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.66.w, vertical: 1.h),
                child: Container(
                  width: 100.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.66.w)
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 3.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 3.w),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Add Tags",
                                style: socialNetworkStyle)),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      bottomSheetForm("Enter tag",textLabel),
                      SizedBox(
                        height: 2.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 3.w),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: 27.w,
                            height: 3.6.h,
                            decoration: BoxDecoration(
                                color: buttonLeft,
                                borderRadius:
                                BorderRadius.circular(16.w)),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "#TIGER",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10.5.sp),
                                ),
                                Icon(
                                  Icons.cancel,
                                  color: Colors.white,
                                  size: 12.sp,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 3.w),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Popular",
                                style: socialNetworkStyle)),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceAround,
                        children: [
                          addTag("#LOVE"),
                          addTag("#LIST"),
                          addTag("#PHONE"),
                          addTag("#CUP"),
                        ],
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3.w),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            padding:
                            EdgeInsets.symmetric(horizontal: 2.w),
                            width: 20.w,
                            height: 4.h,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: borderColor2),
                              borderRadius: BorderRadius.circular(16.w),
                            ),
                            child: Text("#HEAD", style: addTagStyle),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
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
class NewObject {
  final String title;
  final String icon;

  NewObject(this.title, this.icon);
}
