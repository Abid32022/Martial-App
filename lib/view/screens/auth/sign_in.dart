import 'package:ev_martial/utils/app_colors.dart';
import 'package:ev_martial/view/screens/auth/forgot_pass_navigation.dart';
import 'package:ev_martial/view/screens/auth/gender_navigation.dart';
import 'package:ev_martial/view/screens/auth/sign_up.dart';
import 'package:ev_martial/view/screens/auth/widgets/custom_check_box.dart';
import 'package:ev_martial/view/widgets/custom_button.dart';
import 'package:ev_martial/view/widgets/custom_divider.dart';
import 'package:ev_martial/view/widgets/custom_text.dart';
import 'package:ev_martial/view/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../utils/app_constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'widgets/auth_bottomsheet.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    // MySize().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 19),
          width: Get.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 80.h,),
              Center(child: Image.asset(AppConstant.icloginlogoBlueOne,height: 112.h,width: 187.w,)),
              SizedBox(height: 36.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 10.w),
                child: customTextRegular(title: 'Login to access your account and continue your journey with us',fontSize: 14.h,fontWeight: FontWeight.w400,align: TextAlign.center),
              ),
              SizedBox(height: 14.h,),
              customTextRegular(title: 'Email',fontSize: 15.h,fontWeight: FontWeight.w500),
              SizedBox(height: 8.h,),
              customTextField(
                // bordercolor: Colors.red,
                prefixImage: Padding(
                  padding: const EdgeInsets.all(14),
                  child: SvgPicture.asset(AppConstant.email,height: 15.h,width: 11.w,),
                  // SvgPicture.asset('assets/icons/ic_password.svg',height: 15.h,width: 11.w,),
                ),
                  hintText: "Enter Email",
              ),
              SizedBox(height: 22.h),
              customTextRegular(title: 'Passcode',fontSize: 15.h,fontWeight: FontWeight.w500),
              SizedBox(height: 8.h,),
              customTextField(
               prefixImage: Padding(
                padding: const EdgeInsets.all(14),
                child: SvgPicture.asset(AppConstant.iclock,height: 15.h,width: 11.w,),
                 ),
                 hintText: "Enter 6 digit Passcode",
              ),
              SizedBox(height: 15.h),
              Row(
                children: [
                  CustomCheckBox(
                    isChecked: false,
                  ),
                  SizedBox(width: 7.w,),
                  Transform.translate(
                    offset: const Offset(0, 2),
                  child: customTextRegular(title: 'Remember Me',fontSize: 14.h,fontWeight: FontWeight.w400,color: Colors.black)),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: GestureDetector(
                        onTap: (){
                          Get.to(()=> const ForgotPasswardNavigation());
                        },
                        child: customTextBold(title: 'Forgot Password?',fontSize: 14.h,fontWeight: FontWeight.w500,color: AppColors.primaryblueColor)),
                  ),
                ],
              ),
              SizedBox(height: 18.h,),
              customButton(
                colors: AppColors.Secondary,
                text: "LOGIN",
                borderRadius: 8.87,
                ontap: (){
                  Get.to(()=> const GenderNavigation());
                   authcustombottomsheet(
                     context,
                     text1: "Successful",
                     text2: "You are successfully logged in to your account.",
                     image: AppConstant.successicon,
                   );
                }
              ),
              SizedBox(height: 25.h,),
              Row(
              children: [
              Expanded(child: customDivider()),
               SizedBox(width: 8.w,),
               customTextRegular(title: 'Or',fontSize: 14.h,fontWeight: FontWeight.w500,color: AppColors.primaryblueColor),
               SizedBox(width: 8.w,),
               Expanded(child: customDivider()),
                ],
              ),
              SizedBox(height: 26.h,),
              Row(
                children: [
                  Expanded(child: customContainer(icon: AppConstant.google)),
                   SizedBox(width: 10.w,),
                  Expanded(child: customContainer(icon:AppConstant.facebook,)),
                   SizedBox(width: 10.w,),
                   Expanded(child: customContainer(icon:AppConstant.apple ,)),
                   SizedBox(width: 10.w,),
                  Expanded(child: customContainer(icon:AppConstant.microsoft ,)),
                   SizedBox(width: 10.w,),
                   Expanded(child: customContainer(icon:AppConstant.github,)),
                ],
              ),
              SizedBox(height: 20.h,),
              Wrap(
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  CustomCheckBox(
                    isChecked: false,
                  ),
                  SizedBox(width: 7.w,),
                  customTextRegular(title: "Agreed to Martial App's ",fontSize: 12.h,fontWeight: FontWeight.w400),
                  customTextRegular(title: "Terms of Use",fontSize: 12.h,fontWeight: FontWeight.w400,color: AppColors.primaryblueColor),
                  customTextRegular(title: " & ",fontSize: 12.h,fontWeight: FontWeight.w400),
                  customTextRegular(title: "Privacy Policy.",fontSize: 12.h,fontWeight: FontWeight.w400,color: AppColors.primaryblueColor),
                ],
              ),
              SizedBox(height: 40.h,),
              customDivider(width: Get.width),
              SizedBox(height: 10.h,),
              Wrap(
              runSpacing: 5,
              children:[
              customTextRegular(title: "If you already have an account we'll log you in. If not ",fontSize: 13.h,fontWeight: FontWeight.w400),
              Center(
                child: GestureDetector(
                onTap: (){
                Get.to(()=> const SignUp());
                },
                child: customTextRegular(title: "register.",fontSize: 15.h,fontWeight: FontWeight.w500,color: AppColors.primaryblueColor)),
              ),
              ]),
              SizedBox(height: 30.h,),
            ],
          ),
        ),
      ),

    );
  }

}
Widget customContainer({String icon= "",}){
  return Container(
    padding: EdgeInsets.symmetric(vertical: 14.h),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.LightBorder)
    ),
    child: Center(child: SvgPicture.asset(icon,height: 16.h,width: 16.h,)),
  );
}