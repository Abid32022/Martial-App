// ignore_for_file: avoid_print, must_be_immutable

import 'package:ev_martial/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../../../utils/app_colors.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text.dart';

class ForgotPassward extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  Function onTap;
  ForgotPassward({super.key,required this.onTap});

  @override
  State<ForgotPassward> createState() => _ForgotPasswardState();
}

class _ForgotPasswardState extends State<ForgotPassward> {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50.h,),
          Center(child: Image.asset(AppConstant.icloginlogoBlueOne,height: 104.h,width: 174.w,)),
          SizedBox(height: 29.h,),
          Center(child: customTextBold(title: "Forgot password", fontWeight: FontWeight.w500, fontSize: 18.h,textAlign: TextAlign.center)),
          SizedBox(height: 8.h,),
          Center(child: customTextBold(title: "Enter the mobile number associated with your account and we'll send an one-time password (otp) with instructions to reset your password.", fontWeight: FontWeight.w400, fontSize: 14.h,textAlign: TextAlign.center)),
          SizedBox(height: 50.h,),
          customTextBold(title: "Mobile Number", fontWeight: FontWeight.w500, fontSize: 15.h,textAlign: TextAlign.center),
          SizedBox(height: 4.32.h,),
         const PhoneField(),
          SizedBox(height: 12.h,),
          customButton(
            colors: AppColors.Secondary,
              text: "SUBMIT",
              borderRadius: 8.86,
              ontap: widget.onTap,
          ),
        ],
    );
  }
}


class PhoneField extends StatelessWidget {
  const PhoneField({super.key});

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
            style: const TextStyle(fontFamily: 'EnnVisions'),
            dropdownIconPosition: IconPosition.trailing,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 4.h),
              isCollapsed: false,
              isDense: true,
              // focusedBorder: InputBorder.none,
              hintText: '786 786004',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: AppColors.LightBorder,width: 1),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color:AppColors.LightBorder, width: 1), // Set to red color
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color:AppColors.LightBorder, width: 1), // Set to red color
              ),
            ),
            initialCountryCode: 'PK',
            flagsButtonPadding: const EdgeInsets.symmetric(horizontal: 5),
            onChanged: (phone) {
              print(phone.completeNumber);
            },
          );
  }
}