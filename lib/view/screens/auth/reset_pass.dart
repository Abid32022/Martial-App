import 'package:ev_martial/view/screens/auth/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_constant.dart';
import '../../widgets/custom_button.dart';
import 'widgets/auth_bottomsheet.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/custom_textfield.dart';
class ResetPassward extends StatefulWidget {
  const ResetPassward({super.key});

  @override
  State<ResetPassward> createState() => _ResetPasswardState();
}

class _ResetPasswardState extends State<ResetPassward> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50.h,),
          Center(child: Image.asset(AppConstant.icloginlogoBlueOne,height: 104.h,width: 174,)),
          SizedBox(height: 29.h,),
          Center(child: customTextBold(title: "Welcome Marc Wilson", fontWeight: FontWeight.w500, fontSize: 18.h,textAlign: TextAlign.center)),
          SizedBox(height: 8.h,),
          Center(child: customTextBold(title: "Enter your new 6-digit passcode to reset your account password and keep your account secure.", fontWeight: FontWeight.w400, fontSize: 14.h,textAlign: TextAlign.center)),
          SizedBox(height: 50.h,),
              customTextRegular(title: 'Passcode',fontSize: 15.h,fontWeight: FontWeight.w500),
              SizedBox(height: 8.h,),
              customTextField(
                // bordercolor: Colors.red,
                 prefixImage: Padding(
                    padding: const EdgeInsets.all(14),
                    child: SvgPicture.asset(AppConstant.iclock,height: 15.h,width: 11.w,),
                  ),
                  hintText: "Enter Passcode",
              ),
              SizedBox(height: 22.h),
              customTextRegular(title: 'Confirm Passcode',fontSize: 15.h,fontWeight: FontWeight.w500),
              SizedBox(height: 8.h,),
              customTextField(
                  prefixImage: Padding(
                    padding: const EdgeInsets.all(14),
                    child: SvgPicture.asset(AppConstant.iclock,height: 15.h,width: 11.w,),
                  ),
                  hintText: "Enter Confirm Passcode",
              ),
              SizedBox(
              height: 20.h,
            ),
             customButton(
              colors: AppColors.Secondary,
              text: "SUBMIT",
              borderRadius: 8.86, 
              ontap: (){
                Get.to(()=> const SignIn());
                 authcustombottomsheet(
                     context,
                     text1: "Password Changed",
                     text2: "Your password has been successfully updated. Please log in with your new credentials and enjoy the experience.",
                     image: AppConstant.successicon,
                   );
              },
          ),
          ],
        ),
    );
  }
}
