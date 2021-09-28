import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:russia_social/components/add_tag.dart';
import 'package:russia_social/components/gradient_button.dart';
import 'package:russia_social/components/lists.dart';
import 'package:russia_social/components/shared_post.dart';
import 'package:russia_social/components/social_row.dart';
import 'package:russia_social/widgets/constants.dart';
import 'package:russia_social/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';

class SearchGlobal extends StatefulWidget {
  const SearchGlobal({Key? key}) : super(key: key);

  @override
  _SearchGlobalState createState() => _SearchGlobalState();
}

class _SearchGlobalState extends State<SearchGlobal> {
  int? value = 2;

  String dropdownvalue = 'Facebook';


  NewObject valuee = itemsx.first;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: scaffoldBack,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 3.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.w),
                child: Text(
                  "Global search",
                  style: globalSearchTitle,
                ),
              ),
              SizedBox(
                height: 0.4.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.w),
                child: Text(
                  "Find a feedback about a specific person",
                  style: textLabel,
                ),
              ),
              SizedBox(
                height: 1.8.h,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5.33.w),
                          topLeft: Radius.circular(5.33.w),
                        )),
                        builder: (context) {
                          return Column(
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
                          );
                        });
                    setState(() {
                      value = 0;
                    });
                  },
                  child: Text(
                    "Tags",
                    style:
                        TextStyle(color: value == 0 ? buttonLeft : titleColor),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5.33.w),
                          topLeft: Radius.circular(5.33.w),
                        )),
                        builder: (context) {
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                height: 3.h,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 3.w),
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Country",
                                        style: socialNetworkStyle)),
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              bottomSheetForm("Country",textLabel),
                              SizedBox(
                                height: 2.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
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
                                          "CANADA",
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
                                  Container(
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
                                          "RUSSIA",
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
                                  Container(
                                    width: 27.w,
                                    height: 3.6.h,
                                    color: Colors.white,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.times,
                                          color: buttonLeft,
                                          size: 12.sp,
                                        ),
                                        Text(
                                          "Clear All",
                                          style: TextStyle(
                                              color: buttonLeft,
                                              fontSize: 10.5.sp),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              Divider(
                                color: iconColor,
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              SizedBox(
                                height: 30.h,
                                child: RawScrollbar(
                                  thumbColor: buttonLeft,
                                  radius: Radius.circular(1.2.w),
                                  thickness: 3,
                                  child: ListView.builder(
                                    itemCount: countries.length,
                                    scrollDirection: Axis.vertical,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 2.w, vertical: 0.7.h),
                                        child: Text(countries[index],
                                            style: fallowNameStyle),
                                      );
                                    },
                                  ),
                                ),
                              )
                            ],
                          );
                        });
                    setState(() {
                      value = 1;
                    });
                  },
                  child: Text(
                    "Country",
                    style:
                        TextStyle(color: value == 1 ? buttonLeft : titleColor),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5.33.w),
                          topLeft: Radius.circular(5.33.w),
                        )),
                        builder: (context) {
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                height: 3.h,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 3.w),
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("City",
                                        style: socialNetworkStyle)),
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              bottomSheetForm("City",textLabel),
                              SizedBox(
                                height: 2.h,
                              ),
                              SizedBox(
                                height: 30.h,
                                child: RawScrollbar(
                                  thumbColor: buttonLeft,
                                  radius: Radius.circular(1.2.w),
                                  thickness: 3,
                                  child: ListView.builder(
                                    itemCount: countries.length,
                                    scrollDirection: Axis.vertical,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 2.w, vertical: 0.7.h),
                                        child: Text(countries[index],
                                            style: fallowNameStyle),
                                      );
                                    },
                                  ),
                                ),
                              )
                            ],
                          );
                        });
                    setState(() {
                      value = 2;
                    });
                  },
                  child: Text(
                    "3 City",
                    style:
                        TextStyle(color: value == 2 ? buttonLeft : titleColor),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5.33.w),
                          topLeft: Radius.circular(5.33.w),
                        )),
                        builder: (context) {
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                height: 2.h,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 3.w),
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Social Network",
                                        style: socialNetworkStyle)),
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.h),
                                child: Container(
                                  padding:
                                      EdgeInsets.only(left: 4.w, right: 2.w),
                                  width: 86.66.w,
                                  height: 8.39.h,
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                    color: scaffoldBack,
                                    borderRadius: BorderRadius.circular(1.86.w),
                                  ),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton<NewObject>(
                                      value: valuee,
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
                                                      color: itemsx.title ==
                                                              "Facebook"
                                                          ? const Color(
                                                              0xFF214F94)
                                                          : itemsx.title ==
                                                                  "Twitter"
                                                              ? const Color(
                                                                  0xFF389FFE)
                                                              : itemsx.title ==
                                                                      "Youtube"
                                                                  ? const Color(
                                                                      0xFFDD4223)
                                                                  : itemsx.title ==
                                                                          "Instagram"
                                                                      ? Colors
                                                                          .pink
                                                                      : Colors
                                                                          .white,
                                                      fontSize: 14.sp),
                                                ),
                                              ],
                                            ));
                                      }).toList(),
                                      onChanged: (newValue) {
                                        setState(() {
                                          valuee = newValue!;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              formBox("NickName or Url Adress", textLabel),
                              SizedBox(
                                height: 2.h,
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
                                height: 2.h,
                              ),
                              socialRow(),
                              SizedBox(
                                height: 2.h,
                              ),
                              Container(
                                width: 27.w,
                                height: 3.6.h,
                                color:Colors.white,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.times,
                                      color: buttonLeft,
                                      size: 12.sp,
                                    ),
                                    Text(
                                      "Clear All",
                                      style: TextStyle(
                                          color: buttonLeft, fontSize: 10.5.sp),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 2.8.h,
                              ),
                            ],
                          );
                        });
                    setState(() {
                      value = 3;
                    });
                  },
                  child: Text(
                    "Social Network",
                    style:
                        TextStyle(color: value == 3 ? buttonLeft : titleColor),
                  ),
                ),
              ]),
              SizedBox(
                height: 1.8.h,
              ),
              sharedPost(),
              SizedBox(
                height: 1.8.h,
              ),
              sharedPost(),
            ],
          ),
        ),
      ),
    );
  }
}
