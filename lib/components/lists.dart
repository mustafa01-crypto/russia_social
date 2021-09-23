import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

import '../widgets/constants.dart';

List<FaIcon> icons = [
  FaIcon(
    FontAwesomeIcons.heart,
    color: buttonLeft,
    size: 18.sp,
  ),
  FaIcon(
    FontAwesomeIcons.meh,
    color: buttonLeft,
    size: 18.sp,
  ),
  FaIcon(
    FontAwesomeIcons.heartBroken,
    color: buttonLeft,
    size: 18.sp,
  ),
  FaIcon(
    FontAwesomeIcons.commentAlt,
    color: buttonLeft,
    size: 18.sp,
  ),
];
List<String> assetSvg = [
  "assets/svg/youtube.svg",
  "assets/svg/facebook.svg",
  "assets/svg/twitter.svg",
  "assets/svg/instagram.svg",
];
List<String> fallow = ["453", "32", "9321", "78"];
List<String> fallowName = ["Feedbacks", "Comments", "Followers", "Following"];

List<String> editProfileNames = [
  "Personal Information",
  "Social Networks",
  "Change Password",
  "Notifications",
  "Language",
  "Support",
  "Delete Account",
  "Log Out"
];

List<Icon> editProfileIcons = [
  Icon(
    Icons.person,
    color: iconColor,
    size: 18.sp,
  ),
  Icon(
    Icons.share,
    color: iconColor,
    size: 18.sp,
  ),
  Icon(
    Icons.lock,
    color: iconColor,
    size: 18.sp,
  ),
  Icon(
    Icons.notifications,
    color: iconColor,
    size: 18.sp,
  ),
  Icon(
    Icons.language,
    color: iconColor,
    size: 18.sp,
  ),
  Icon(
    Icons.contact_support_rounded,
    color: iconColor,
    size: 18.sp,
  ),
  Icon(
    Icons.delete,
    color: buttonLeft,
    size: 18.sp,
  ),
  Icon(
    Icons.exit_to_app_sharp,
    color: buttonLeft,
    size: 18.sp,
  ),
];
