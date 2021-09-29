import 'package:flutter/material.dart';
import 'package:russia_social/components/left_profile.dart';
import 'package:russia_social/components/messages.dart';
import 'package:russia_social/widgets/constants.dart';
import 'package:russia_social/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';

class SendPhoto extends StatefulWidget {
  const SendPhoto({Key? key}) : super(key: key);

  @override
  _SendPhotoState createState() => _SendPhotoState();
}

class _SendPhotoState extends State<SendPhoto> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: scaffoldBack,
        body: Column(
          children: [
            SizedBox(
              height: 2.h,
            ),
            SizedBox(
              height: 7.9.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: buttonLeft,
                      size: 6.4.w,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  Stack(
                    children: [
                      profile("assets/rocky.jpg", 9.8.w, 5.48.h, 5.48.h),
                      Positioned(
                        right: 1.7.w,
                        bottom: 0.2.h,
                        child: Container(
                          width: 4.w,
                          height: 2.24.h,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 0.5.w),
                              shape: BoxShape.circle,
                              image: const DecorationImage(
                                  image: AssetImage("assets/top.png"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 1.w,
                  ),
                  Text(
                    "Peter Rollins",
                    style: titleStyle,
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  PopupMenuButton<int>(
                    icon: Icon(
                      Icons.more_horiz,
                      color: buttonLeft,
                      size: 6.4.w,
                    ),
                    color: Colors.white,
                    itemBuilder: (context) => [
                      PopupMenuItem<int>(value: 0, child: Text("Block user",style: popupBlueStyle,)),
                      const PopupMenuDivider(),
                      PopupMenuItem<int>(
                          value: 1, child: Text("Clear history",style: popupBlueStyle,)),
                      const PopupMenuDivider(),
                      PopupMenuItem<int>(
                          value: 2, child: Text("Mark as spam",style: popupBlueStyle,)),
                      const PopupMenuDivider(),
                      PopupMenuItem<int>(
                          value: 3, child: Text("Delete chat",style: popupRedStyle,)),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal:2.66.w),
              child: Container(
                width: 100.w,
                height: 82.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.33.w)
                ),

                child: Column(
                  children: [
                    SizedBox(
                      height: 2.h,
                    ),
                    Container(
                      height: 3.1.h,
                      width: 18.w,
                      padding: EdgeInsets.symmetric(horizontal: 1.w,vertical: 0.4.h),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              color:dividerColor,
                              width: 0.3.w
                          ),
                          borderRadius: BorderRadius.circular(5.33.w)
                      ),
                      child: Text("21 June",style: addTagStyle,),
                    ),

                    SizedBox(
                      height: 1.h,
                    ),
                    messageReceiver("Hii","12:05"),
                    messageSender("how are you?","12:06"),
                    messageReceiver("I am fine.And you","13:21"),
                    messagePhotoSender("assets/uygun.png","21:18"),
                    messageReceiver("Hii","04:00"),
                    SizedBox(
                      height: 2.h,
                    ),
                    const Expanded(child: SizedBox()),
                    Divider(
                      color: dividerColor,
                      thickness: 3,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 3.w,
                        ),
                        Icon(
                          Icons.photo_camera_back,
                          color: iconColor,
                          size: 18.sp,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        SizedBox(
                          width: 55.w,
                          height: 5.h,
                          child: TextFormField(

                            decoration:  InputDecoration(
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                hintText: "Write a message...",
                                hintStyle: textLabel
                            ),

                          ),
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Icon(
                          Icons.emoji_emotions,
                          color: iconColor,
                          size: 18.sp,
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        IconButton(
                          onPressed: (){

                          },
                          icon: Icon(
                            Icons.send_outlined,
                            color: buttonLeft,
                            size: 18.sp,
                          ),
                        ),
                      ],
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
