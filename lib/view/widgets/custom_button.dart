import 'package:ev_martial/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

Widget customButton({
  double height = 53,
  double width = double.infinity,
  String text = "",
  double fontSize = 16,
  FontWeight fontWeight = FontWeight.w500,
  Color fontColor = AppColors.black,
  double borderRadius = 0,
  Function ?ontap,
  Color? colors,
}){
  return  GestureDetector(
    onTap: (){
      ontap!();
    },
    child: Container(
        // margin: EdgeInsets.only(bottom:80 ),
        height: 48.h,
        width: Get.width,
        decoration: BoxDecoration(
          color: colors,
          // gradient: LinearGradient(
          //   colors: [Colors.blue, AppColors.lightgreen.withOpacity(0.50)],
          //   begin: Alignment.topLeft,
          //   end: Alignment.bottomRight,
          // ),
          border: Border.all(color: Colors.white,width: 1.5),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Center(
          child: Text(
            text,style: TextStyle(
            fontFamily: 'EnnVisions',
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: fontColor,
          ),
          ),
        )
    ),
  );

}