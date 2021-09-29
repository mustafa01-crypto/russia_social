import 'package:flutter/material.dart';
import 'package:russia_social/widgets/constants.dart';
import 'package:russia_social/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';


Widget messageReceiver(String message,String time) {
  return Align(
    alignment: Alignment.centerLeft,
    child: Column(
      children: [
        Container(
          padding:  EdgeInsets.symmetric(horizontal: 4.w,vertical: 1.h),
          margin:  EdgeInsets.only(right: 4.5.w,top: 0.5.h,left: 4.5.w,bottom: 0.25.h),
          constraints:  BoxConstraints(
            maxWidth: 50.w,
          ),
          decoration: BoxDecoration(
              color:buttonColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5.w),
                topRight: Radius.circular(5.w),
                bottomRight: Radius.circular(5.w),
              )
          ),
          child: Text(message,style: fallowNameStyle,),
        ),
        Text(time,style: addTagStyle,)
      ],
    ),
  );
}

Widget messageSender(String message,String time) {
  return Align(
    alignment: Alignment.centerRight,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding:  EdgeInsets.symmetric(horizontal: 4.w,vertical: 1.h),
          margin:  EdgeInsets.only(right: 4.5.w,top: 0.5.h,left: 4.5.w,bottom: 0.25.h),
          constraints:  BoxConstraints(
            maxWidth: 50.w,
          ),
          decoration: BoxDecoration(
              color:sendMessage,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5.w),
                topRight: Radius.circular(5.w),
                bottomRight: Radius.circular(5.w),
              )
          ),
          child: Text(message,style: fallowNameStyle,),
        ),
        Text(time,style: addTagStyle,)
      ],
    ),
  );
}

Widget messagePhotoSender(String path,String time) {
  return Align(
    alignment: Alignment.centerRight,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding:  EdgeInsets.symmetric(horizontal: 4.w,vertical: 1.h),
          margin:  EdgeInsets.only(right: 4.5.w,top: 0.5.h,left: 4.5.w,bottom: 0.25.h),
          constraints:  BoxConstraints(
            maxWidth: 50.w,
            maxHeight: 25.h
          ),
          decoration: BoxDecoration(
              color:sendMessage,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5.w),
                topRight: Radius.circular(5.w),
                bottomRight: Radius.circular(5.w),
              ),
            image: DecorationImage(
              image: AssetImage(path)
            )
          ),
        ),
        Text(time,style: addTagStyle,)
      ],
    ),
  );
}