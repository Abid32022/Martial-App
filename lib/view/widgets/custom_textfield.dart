import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_colors.dart';

Widget customTextField({
  bool showtext =true,
  String? hintText,
  FontWeight fontWeight = FontWeight.w400,
  TextEditingController? controller,
  Function ? validator,
  double fontSize = 15,
  Color bordercolor = AppColors.LightBorder,
  int maxLines  = 1,
  bool ?isprefixImage=false,
  // String? prefixImage ,
  bool? suffix = false,
  bool enableborder = false,
  Widget? suffixWidget,
  bool? isObscure = false,
  Color fillcolor  =Colors.white,
  bool filled  = false,
  double borderRadius =8,
  bool nonborder = false,
  Function? ontap,
  // bool Ontap = false,
  bool isKeyboard = false,
  Function? onChanged,
  bool showErrorBorder = false,
  double errorBorderWidth = 2.0,
  bool isPrefixIcon = true,
  bool focusBorder = false,
  Widget? prefixImage,
  Color textFieldColor = AppColors.black,
  IconData prefixicon = Icons.mail,
  bool noOutlineBorder = true,
  Color hinttextcolor = Colors.grey,
})
{

  return SizedBox(
    height: 46.h,
    child: TextFormField(
        onTap:(){
          ontap!();
        },
        // onChanged: (text){
        //   onChanged!();
        // },
        controller: controller,
        validator: (value) {
          return validator!(value);
        },
        keyboardType:isKeyboard? TextInputType.number:TextInputType.text,
        maxLines: maxLines,
        obscureText: isObscure!,
        cursorColor: focusBorder? Colors.yellow:null,
        style: TextStyle(fontSize: 18.h,fontWeight: FontWeight.w400,color: textFieldColor,fontFamily: 'EnnVisions'),
        // style: focusBorder?  const TextStyle(color: Colors.yellow,fontSize: 9):null,
        decoration: noOutlineBorder? InputDecoration(
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red,width: 2),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          filled: filled,
          fillColor:fillcolor,
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red,width: 2),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          enabledBorder:enableborder?  OutlineInputBorder(
            borderSide: BorderSide(color: bordercolor,width: 2),
            borderRadius: BorderRadius.circular(borderRadius),
          ): OutlineInputBorder(
            borderSide: BorderSide(color: bordercolor),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),

          hintText: showtext?  hintText:null,
          prefixIcon: prefixImage,
          focusedBorder:enableborder?  OutlineInputBorder(
            borderSide: BorderSide(color: bordercolor,width: 2),
            borderRadius: BorderRadius.circular(borderRadius),
          ): OutlineInputBorder(
            borderSide: BorderSide(color: bordercolor,width: 2),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          suffixIcon: suffix! ? suffixWidget : null,
          hintStyle: TextStyle(fontWeight: FontWeight.w400,fontSize: fontSize.h,color: hinttextcolor,height: 1,fontFamily: 'EnnVisions'),
        ):InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(fontWeight: FontWeight.w400,fontSize: fontSize.h,color: Colors.white,height: 1,fontFamily: 'EnnVisions'),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color:  Colors.brown, // Color for the enabled underline border
            ),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.brown, // Color for the focused underline border
            ),
          ),
          suffixIcon: suffixWidget,
        )
    ),
  );
}
