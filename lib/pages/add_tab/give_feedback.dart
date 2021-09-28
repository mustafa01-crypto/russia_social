import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:russia_social/components/add_tag.dart';
import 'package:russia_social/components/gradient_button.dart';
import 'package:russia_social/components/left_profile.dart';
import 'package:russia_social/components/like_button.dart';
import 'package:russia_social/components/top_row_icons.dart';
import 'package:russia_social/pages/add_tab/add_feedback.dart';
import 'package:russia_social/widgets/constants.dart';
import 'package:russia_social/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';

class GiveFeedbacks extends StatefulWidget {
  const GiveFeedbacks({Key? key}) : super(key: key);

  @override
  _GiveFeedbacksState createState() => _GiveFeedbacksState();
}

class _GiveFeedbacksState extends State<GiveFeedbacks> {
  TextEditingController t1 = TextEditingController();
  GlobalKey key = GlobalKey<FormState>();

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
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        topRow(context, "feedback", 0),
                        SizedBox(
                          width: 5.w,
                        ),
                        Container(
                          width: 5.w,
                          height: 5.w,
                          decoration:
                              const BoxDecoration(shape: BoxShape.circle),
                          child: Image.network(
                            "https://upload.wikimedia.org/wikipedia/commons/thumb/1/13/United-kingdom_flag_icon_round.svg/1200px-United-kingdom_flag_icon_round.svg.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const AddFeedbacks()));
                          },
                          child: Text(
                            "Show original",
                            style: bodyAddComment,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.66.w),
                child: Container(
                  width: 100.w,
                  height: 156.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.33.w)),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 3.w, top: 2.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 9.w,
                              height: 9.w,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: CircleAvatar(
                                radius: 9.w,
                                backgroundColor: Colors.white,
                                backgroundImage:
                                    const AssetImage("assets/angel.jpg"),
                              ),
                            ),
                            Text(
                              "Peter Rollin",
                              style: bodyCommentTitle,
                            ),
                            SizedBox(
                              width: 30.w,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: FaIcon(
                                FontAwesomeIcons.ellipsisH,
                                color: iconColor2,
                                size: 18.sp,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 3.w, right: 15.w),
                        child: Text(
                          "Go out for a walk with Anna",
                          style: feedbackTitleStyle,
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        children: [
                          addOrangeTag("#ANNA"),
                          addOrangeTag("#LOURE"),
                          addOrangeTag("DATING"),
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            rowImages(
                                "https://cdn.pixabay.com/photo/2016/02/10/21/59/landscape-1192669__480.jpg"),
                            rowImages(
                                "https://images.unsplash.com/photo-1591448764624-d7973a442bff?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bWFuemFyYXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80"),
                            rowImages(
                                "http://mediatrend.mediamarkt.com.tr/wp-content/uploads/2017/02/2017_subat_03.jpg"),
                            rowImages(
                                "https://i.internethaber.com/2/720/450/images/gallery/37266/b.jpg")
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      bottomSheetForm("Information person", userNickName),
                      SizedBox(
                        height: 2.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 3.w, right: 5.w),
                        child: Text(
                          "Whether you’re crossing the George Washington"
                          " Bridge into the Heights, riding the Metro "
                          "North-south along the Hudson, or stuck in traffic "
                          "along the Long Island Expressway, there’s nothing "
                          "like that feeling of magic and inspiration that washes "
                          "over you the moment you first spot the Manhattan "
                          "skyline. Whether you’re a first-timer or a lifelong"
                          " New Yorker, there’s always more to discover.",
                          style: commentAddTextStyle,
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 9.w),
                                child: SizedBox(
                                  width: 82.w,
                                  height: 21.h,
                                  child: Text(
                                    "The interaction of the corporation and"
                                    " the client, according to F. Kotler,"
                                    " weakly distorts the social industry "
                                    "standard. Expertise of the completed "
                                    "project, according to F. Kotler, is"
                                    " ambiguous. Community stimulation allows"
                                    " for the tactical principle of perception.",
                                    style: addCommentCommentStyle,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 2.w,
                                top: 1.w,
                                child: SizedBox(
                                  width: 5.w,
                                  height: 5.w,
                                  child:
                                      SvgPicture.asset("assets/svg/quote.svg"),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 3.w, right: 20.w),
                        child: Text(
                          "The pool of loyal publications concentrates"
                          " the role-playing exhibition stand. Until recently.",
                          style: commentAddTextStyle,
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 3.w),
                        child: Row(
                          children: [
                            Text(
                              "More",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontFamily: 'Graphic',
                                fontStyle: FontStyle.normal,
                                foreground: Paint()..shader = textShader,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            Icon(
                              Icons.arrow_downward,
                              color: buttonLeft,
                              size: 16.sp,
                            )
                          ],
                        ),
                      ),
                      Divider(
                        color: dividerColor,
                      ),
                      Row(
                        children: [
                          Row(children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 2.h),
                              child: Row(
                                children: [
                                  buttonLike(
                                    112,
                                    FontAwesomeIcons.heart,
                                  ),
                                  buttonLike(
                                    658,
                                    FontAwesomeIcons.meh,
                                  ),
                                  buttonLike(
                                    43,
                                    FontAwesomeIcons.heartBroken,
                                  ),
                                  SizedBox(
                                    width: 15.w,
                                  ),
                                  buttonLike(
                                    1155,
                                    FontAwesomeIcons.eye,
                                  ),
                                ],
                              ),
                            )
                          ])
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.66.w),
                child: Container(
                  width: 100.w,
                  height: 10.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.33.w),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 9.w,
                        height: 9.w,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: CircleAvatar(
                          radius: 9.w,
                          backgroundColor: Colors.white,
                          backgroundImage: const AssetImage("assets/angel.jpg"),
                        ),
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      Form(
                        key: key,
                        child: Container(
                          padding: EdgeInsets.only(left: 2.w, right: 2.w),
                          width: 70.w,
                          height: 7.h,
                          decoration: BoxDecoration(
                            color: scaffoldBack,
                            borderRadius: BorderRadius.circular(2.66.w),
                          ),
                          child: TextFormField(
                            initialValue: "Your Comment",
                            style: textLabel,
                            decoration: InputDecoration(
                              hintText: "Your Comment",
                              hintStyle: textLabel,
                              enabledBorder: InputBorder.none,
                              suffixIcon: Icon(Icons.emoji_emotions_outlined,
                                  size: 18.sp, color: iconColor),
                              suffix: Icon(
                                Icons.photo_outlined,
                                size: 18.sp,
                                color: iconColor,
                              ),
                            ),
                          ),
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
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: Container(
                  width: 100.w,
                  height: 45.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.33.w),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 5.w, vertical: 2.h),
                        child: Row(
                          children: [
                            Container(
                              width: 9.w,
                              height: 9.w,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: CircleAvatar(
                                radius: 9.w,
                                backgroundColor: Colors.white,
                                backgroundImage:
                                    const AssetImage("assets/angel.jpg"),
                              ),
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            Text(
                              "Danny Olis",
                              style: bodyCommentTitle,
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 1.7.w, vertical: 0.5.h),
                              decoration: BoxDecoration(
                                  color: buttonLeft,
                                  borderRadius: BorderRadius.circular(18.1.w)),
                              child: Text(
                                "Author",
                                style: moreButtonName,
                              ),
                            ),
                            SizedBox(
                              width: 17.w,
                            ),
                            Text(
                              "10.10.2020",
                              style: littleDateStyle,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 18.66.w, right: 4.w),
                        child: Text(
                          "Awesome video! Really enjoyed "
                          "it :) SIA has one of the best longhaul"
                          " economy class! Sufficient and good "
                          "looking food, comfortable seat and great"
                          " IFE (+ a big screen). Little touches as a"
                          " menu are also very nice, welk done SIA!"
                          " Can’t wait to try them out :)",
                          style: addCommentCommentStyle,
                        ),
                      ),
                      Row(children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 13.w, vertical: 1.h),
                          child: Row(
                            children: [
                              buttonLike(
                                11,
                                FontAwesomeIcons.heart,
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                "1 Reply",
                                style: textLabel,
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                "Reply",
                                style: userNickName,
                              ),
                            ],
                          ),
                        )
                      ])
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: Container(
                  width: 100.w,
                  height: 58.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.33.w),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 5.w, vertical: 2.h),
                        child: Row(
                          children: [
                            Container(
                              width: 9.w,
                              height: 9.w,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: CircleAvatar(
                                radius: 9.w,
                                backgroundColor: Colors.white,
                                backgroundImage:
                                    const AssetImage("assets/rocky.jpg"),
                              ),
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            Text(
                              "Cowet Flow",
                              style: bodyCommentTitle,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 18.66.w, right: 4.w),
                        child: Text(
                          "Awesome video! Really enjoyed "
                          "it :) SIA has one of the best longhaul"
                          " economy class! Sufficient and good "
                          "looking food, comfortable seat and great"
                          " IFE (+ a big screen). Little touches as a"
                          " menu are also very nice, welk done SIA!"
                          " Can’t wait to try them out :)",
                          style: addCommentCommentStyle,
                        ),
                      ),
                      Row(children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 13.w, vertical: 1.h),
                          child: Row(
                            children: [
                              buttonLike(
                                11,
                                FontAwesomeIcons.heart,
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                "1 Reply",
                                style: textLabel,
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                "Reply",
                                style: userNickName,
                              ),
                            ],
                          ),
                        )
                      ]),
                      Padding(
                        padding: EdgeInsets.only(left: 5.w),
                        child: Container(
                          width: 73.3.w,
                          height: 15.h,
                          decoration: BoxDecoration(
                            color: replyColor,
                            borderRadius: BorderRadius.circular(2.66.w),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 4.w, top: 2.h),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 9.w,
                                      height: 9.w,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: CircleAvatar(
                                        radius: 9.w,
                                        backgroundColor: Colors.white,
                                        backgroundImage: const AssetImage(
                                            "assets/rocky.jpg"),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 3.w,
                                    ),
                                    Text(
                                      "Cowet Flow",
                                      style: bodyCommentTitle,
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 1.7.w, vertical: 0.5.h),
                                      decoration: BoxDecoration(
                                          color: buttonLeft,
                                          borderRadius:
                                              BorderRadius.circular(18.1.w)),
                                      child: Text(
                                        "Author",
                                        style: moreButtonName,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15.w),
                                child: Text(
                                  "Thank You :)",
                                  style: addCommentCommentStyle,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 17.w),
                                child: Row(
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.heart,
                                      color: buttonLeft,
                                      size: 14.sp,
                                    ),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    Text(
                                      "Reply",
                                      style: userNickName,
                                    )
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
              ),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: Container(
                  width: 100.w,
                  height: 26.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.33.w),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 5.w, vertical: 2.h),
                        child: Row(
                          children: [
                            Container(
                              width: 9.w,
                              height: 9.w,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: CircleAvatar(
                                radius: 9.w,
                                backgroundColor: Colors.white,
                                backgroundImage:
                                    const AssetImage("assets/rocky.jpg"),
                              ),
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            Text(
                              "Cowet Flow",
                              style: bodyCommentTitle,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 18.66.w, right: 4.w),
                        child: Text(
                          "My longest trip was 13hours from"
                          " London-Singapore. And when was "
                          "you in Singapore?",
                          style: addCommentCommentStyle,
                        ),
                      ),
                      Row(children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 13.w, vertical: 1.h),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 5.w,
                              ),
                              FaIcon(
                                FontAwesomeIcons.heart,
                                color: buttonLeft,
                                size: 14.sp,
                              ),
                              SizedBox(
                                width: 2.w,
                              ),
                              Text(
                                " Reply",
                                style: textLabel,
                              ),
                            ],
                          ),
                        )
                      ]),
                    ],
                  ),
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
