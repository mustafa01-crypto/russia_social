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
          padding:  EdgeInsets.all(4.w),
          margin:  EdgeInsets.only(right: 4.5.w,top: 2.w,left: 4.5.w,bottom: 1.w),
          constraints: const BoxConstraints(
            maxWidth: 200,
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
          padding:  EdgeInsets.all(4.w),
          margin:  EdgeInsets.only(right: 4.5.w,top: 2.w,left: 4.5.w,bottom: 1.w),
          constraints: const BoxConstraints(
            maxWidth: 200,
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