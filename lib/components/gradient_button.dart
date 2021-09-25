import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:russia_social/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';
import '../widgets/constants.dart';
import 'lists.dart';

Widget gradientButton(String title) {
  return Container(
    width: 54.66.w,
    height: 6.14.h,
    alignment: Alignment.center,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7), gradient: buttonGradient),
    child: Text(
      title,
      style: buttonName,
    ),
  );
}

Widget gradientTextButton(String title) {
  return Container(
    width: 54.66.w,
    height: 6.14.h,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(7),
      color: buttonColor,
    ),
    child: Text(title,
        style: TextStyle(
          fontSize: 9.sp,
          fontFamily: 'Graphic',
          fontStyle: FontStyle.normal,
          foreground: Paint()..shader = textShader,
          fontWeight: FontWeight.w500,
        )),
  );
}

Widget socialButtons() {
  return Row(
      children: List.generate(
    4,
    (index) => Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
      child: SizedBox(
          width: 11.2.w,
          height: 11.2.w,
          child: SvgPicture.asset(assetSvg[index])),
    ),
  ));
}

Widget socialLoginButtons() {
  return Row(
      children: List.generate(
    3,
    (index) => Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
      child: SizedBox(
          width: 9.w,
          height: 9.w,
          child: SvgPicture.asset(assetSvgLogin[index])),
    ),
  ));
}


Widget socialAddButtons() {
  return Row(
      children: List.generate(
        3,
            (index) => Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
          child: SizedBox(
              width: 9.w,
              height: 9.w,
              child: SvgPicture.asset(assetSvgAdd[index])),
        ),
      ));
}


Widget formBox(String text, TextStyle textStyle) {
  return Container(
    padding: EdgeInsets.only(left: 5.33.w),
    width: 86.66.w,
    height: 8.39.h,
    alignment: Alignment.centerLeft,
    decoration: BoxDecoration(
      color: scaffoldBack,
      borderRadius: BorderRadius.circular(2.66.w),
    ),
    child: TextFormField(
      initialValue: text,
      style: textStyle,
      decoration: const InputDecoration(
          focusedBorder: InputBorder.none, enabledBorder: InputBorder.none),
    ),
  );
}

Widget formLabel(String label) {
  return Padding(
    padding: EdgeInsets.only(left: 4.w),
    child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          label,
          style: textLabel,
        )),
  );
}

Widget orangeBox(String name) {
  return Container(
    width: 86.66.w,
    height: 7.69.h,
    alignment: Alignment.center,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1.86.w), color: buttonLeft),
    child: Text(
      name,
      style: buttonName,
    ),
  );
}

Widget gradientLoginButton(String title,double width,double height) {
  return Container(
    width:width,
    height: height,
    alignment: Alignment.center,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7), gradient: buttonGradient),
    child: Text(
      title,
      style: buttonName,
    ),
  );
}
