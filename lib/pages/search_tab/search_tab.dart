import 'package:flutter/material.dart';
import 'package:russia_social/components/add_tag.dart';
import 'package:russia_social/components/shared_post.dart';
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
                              Container(
                                padding: EdgeInsets.only(left: 5.33.w),
                                width: 86.66.w,
                                height: 8.39.h,
                                alignment: Alignment.centerLeft,
                                decoration: BoxDecoration(
                                  color: scaffoldBack,
                                  borderRadius: BorderRadius.circular(2.66.w),
                                ),
                                child: TextFormField(
                                  initialValue: "Enter Tag",
                                  style: textLabel,
                                  decoration: InputDecoration(
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      suffixIcon: IconButton(
                                        onPressed: () {
                                          // Add Tag
                                        },
                                        icon: Icon(
                                          Icons.add,
                                          color: buttonLeft,
                                          size: 18.sp,
                                        ),
                                      )),
                                ),
                              ),
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

/*
 List.generate(
                    tags.length,
                    (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              value = index;
                            });
                          },
                          child: Text(
                            tags[index],
                            style: TextStyle(
                                color:
                                    value == index ? buttonLeft : titleColor),
                          ),
                        )),
 */
