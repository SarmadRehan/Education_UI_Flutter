import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const Color kLightPrimaryColor = Color(0xffFAFAFA);
const Color kLightAccentColor = Color.fromARGB(255, 171, 173, 183);
const Color kLightTextColor = Color(0xff28292C);
const Color kLightPlaceholderColor = Color.fromARGB(255, 255, 255, 255);
const Color kLightPlaceholderTextColor = Color(0xFFC6CAD3); //Color(0xffF5F6FA);
const Color kLightBackgroundColor = Color(0xFFD9D9D9);
const Color kLightErrorColor = Color(0xFFFF7971);

const Color kBlackColor = Colors.black;
const Color kWhiteColor = Colors.white;
const Color kGrayColor = Color(0xFF8D989D);

// Radius Circular
final kRadiusCircular = Radius.circular(10.r);
final kRadiusCircularHalf = Radius.circular(5.r);
final kBorderRadiusCircular = BorderRadius.circular(10.r);
final kBorderRadiusAll = BorderRadius.all(kRadiusCircular);
final kBorderRadiusAllHalf = BorderRadius.all(kRadiusCircularHalf);
final kBorderRadiusTop = BorderRadius.only(
  topLeft: kRadiusCircular,
  topRight: kRadiusCircular,
);
final kBorderRadiusBottom = BorderRadius.only(
  bottomLeft: kRadiusCircular,
  bottomRight: kRadiusCircular,
);
const kBorderSide = BorderSide(color: Colors.transparent, width: 0);

// border shape
// Input textfield decoration
final kOutlineInputBorderShape = OutlineInputBorder(
  borderRadius: kBorderRadiusCircular,
  borderSide: kBorderSide,
);
// border shape 2
// Card
final kRoundedRectangleBorderShape = RoundedRectangleBorder(
  borderRadius: kBorderRadiusAll,
  side: kBorderSide,
);
// border shape 3
const kCircleBorderShape = CircleBorder(side: kBorderSide);
// border shape 4
const kStadiumBorderShape = StadiumBorder(side: kBorderSide);

// Padding on Input textfield
final kContentPaddingVertical = EdgeInsets.symmetric(vertical: 20.h);

// Padding on Card View
final kContentPadding = REdgeInsets.all(10.0);
const kTextStyleBold = TextStyle(
  fontWeight: FontWeight.bold,
);

// Page Padding or Screen Padding
final kPagePadding = EdgeInsets.symmetric(horizontal: 14.w);
final kPageItemSpacing = SizedBox(height: 8.h);
final kPageItemSpacing1 = SizedBox(height: 20.h);
final kPageItemSpacing2 = SizedBox(height: 30.h);
final kPageItemSpacing4 = SizedBox(height: 40.h);
final kPageItemSpacing6 = SizedBox(height: 45.h);

// Padding on ElevatedButton
final kElevatedButtonPadding = EdgeInsets.symmetric(vertical: 18.h);

const kTextStyleWhiteBold = TextStyle(
  fontWeight: FontWeight.bold,
  color: kWhiteColor,
);
