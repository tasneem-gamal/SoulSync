import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soulsync/core/theming/colors_manger.dart';

class Styles {
  static TextStyle textStyle24BoldOffWhite =
      TextStyle(
        fontSize: 24.sp, 
        fontWeight: FontWeight.w700,
        color: ColorsManger.offWhite
      );
  static TextStyle textStyle16RegularBlack =
      TextStyle(
        fontSize: 16.sp, 
        fontWeight: FontWeight.w400,
        color: Colors.black
      );
  static TextStyle textStyle16Medium =
      TextStyle(
        fontSize: 16.sp, 
        fontWeight: FontWeight.w500,
      );
  static TextStyle textStyle12MediumBlue =
      TextStyle(
        fontSize: 12.sp, 
        fontWeight: FontWeight.w500,
        color: ColorsManger.primaryColor
      );
  static TextStyle textStyle12RegularLightGrey =
      TextStyle(
        fontSize: 12.sp, 
        fontWeight: FontWeight.w400,
        color: ColorsManger.lightGreyText
      );
  static TextStyle textStyle14RegularLightGrey =
      TextStyle(
        fontSize: 12.sp, 
        fontWeight: FontWeight.w400,
        color: ColorsManger.lightGreyText
      );
}