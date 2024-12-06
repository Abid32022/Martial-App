import 'package:ev_martial/utils/app_colors.dart';
import 'package:ev_martial/utils/app_constant.dart';
import 'package:ev_martial/view/screens/auth/forgot_pass_navigation.dart';
import 'package:ev_martial/view/screens/auth/sign_in.dart';
import 'package:ev_martial/view/screens/auth/widgets/custom_check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../../widgets/custom_button.dart';
import 'widgets/auth_bottomsheet.dart';
import '../../widgets/custom_divider.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/custom_textfield.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 19),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SizedBox(height: 40.h,),
            GestureDetector(
              onTap: (){
                Get.back();
              },
              // ignore: deprecated_member_use
              child: SvgPicture.asset(AppConstant.icback,color: Colors.black,)),
          SizedBox(height: 4.h,),
              Center(child: customTextBold(title: "Create Your Account", fontWeight: FontWeight.w500, fontSize: 18.h)),
              SizedBox(height: 8.h,),
              Center(child: customTextBold(title: "Please fill in the required information to complete your registration and join our us.", fontWeight: FontWeight.w400, fontSize: 14.h,textAlign: TextAlign.center)),
            SizedBox(height: 14.h,),
              customTextBold(title: "First  Name", fontWeight: FontWeight.w500, fontSize: 15.h,textAlign: TextAlign.center),
              SizedBox(height: 4.h,),
              customTextField(
                  prefixImage: Padding(
                    padding: const EdgeInsets.all(14),
                    child: SvgPicture.asset(AppConstant.icusername,height: 15.h,width: 11.w,),
                  ),
                  hintText: "Michael",
              ),
              SizedBox(height: 16.h,),
              customTextBold(title: "Surname  Name", fontWeight: FontWeight.w500, fontSize: 15.h,textAlign: TextAlign.center),
              SizedBox(height: 4.h,),
              customTextField(
                prefixImage: Padding(
                  padding: const EdgeInsets.all(14),
                  child: SvgPicture.asset(AppConstant.icusername,height: 15.h,width: 11.w,),
                ),
                hintText: "Cumberbatch",
              ),
              SizedBox(height: 16.h,),
              customTextBold(title: "Username", fontWeight: FontWeight.w500, fontSize: 15.h,textAlign: TextAlign.center),
              SizedBox(height: 4.h,),
              customTextField(
                prefixImage: Padding(
                  padding: const EdgeInsets.all(14),
                  child: SvgPicture.asset(AppConstant.icusername,height: 15.h,width: 11.w,),
                ),
                hintText: "Enter username",
              ),
              SizedBox(height: 16.h,),
              customTextBold(title: "Email id", fontWeight: FontWeight.w500, fontSize: 15.h,textAlign: TextAlign.center),
              SizedBox(height: 4.h,),
              customTextField(
                prefixImage: Padding(
                  padding: const EdgeInsets.all(14),
                  child: SvgPicture.asset('assets/icons/ic_email.svg',height: 15.h,width: 11.w,),
                ),
                hintText: "Enter Email",
              ),
              SizedBox(height: 16.h,),
              customTextBold(title: "Mobile Number", fontWeight: FontWeight.w500, fontSize: 15.h,textAlign: TextAlign.center),
              SizedBox(height: 4.h,),

              SizedBox(
                // height: 50.h,
                child: IntlPhoneField(
                  dropdownIconPosition: IconPosition.trailing,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 4),
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
                    // ignore: avoid_print
                    print(phone.completeNumber);
                  },
                ),
              ),
              // SizedBox(height: 16.h,),
              customTextBold(title: "Passcode", fontWeight: FontWeight.w500, fontSize: 15.h,textAlign: TextAlign.center),
              SizedBox(height: 4.h,),
              customTextField(
                prefixImage: Padding(
                  padding: const EdgeInsets.all(14),
                  child: SvgPicture.asset(AppConstant.icusername,height: 15.h,width: 11.w,),
                ),
                hintText: "Enter Passcode",
                suffixWidget: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(AppConstant.passcode,height: 32.h,width: 32.w,),
                ),
                suffix: true,
              ),
              SizedBox(height: 16.h,),
              customTextBold(title: "Confirm Passcode", fontWeight: FontWeight.w500, fontSize: 15.h,textAlign: TextAlign.center),
              SizedBox(height: 4.h,),
              customTextField(
                prefixImage: Padding(
                  padding: const EdgeInsets.all(14),
                  child: SvgPicture.asset(AppConstant.iclock,height: 15.h,width: 11.w,),
                ),
                hintText: "Enter Confirm Passcode",
                  suffixWidget: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(AppConstant.passcode,height: 32.h,width: 32.w,),
                  ),
                  suffix: true,
              ),
              SizedBox(height: 14.h,),
              Row(
                children: [
                  CustomCheckBox(
                    isChecked: false,
                  ),
                  SizedBox(width: 7.w,),
                  customTextRegular(title: 'Remember Me',fontSize: 14.h,fontWeight: FontWeight.w400,color: Colors.black),
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
                  text: "REGISTER",
                  borderRadius: 8.86,
                  ontap: (){
                    authcustombottomsheet(
                          context,
                          text1: "Unable to Register Account.",
                          text2: "Please ensure all required fields are filled out correctly and try again.",
                          image: AppConstant.icreject,
                    );
                  }
              ),
              SizedBox(height: 16.h,),
              Row(
                children: [
                  Expanded(child: customDivider()),
                  SizedBox(width: 8.w,),
                  customTextRegular(title: 'Or',fontSize: 14.h,fontWeight: FontWeight.w500,color: AppColors.primaryblueColor),
                  SizedBox(width: 8.w,),
                  Expanded(child: customDivider()),
                ],
              ),
              SizedBox(height: 20.h,),
               Row(
                children: [
                  Expanded(child: GestureDetector(
                  onTap: (){
                          authcustombottomsheet(
                          context,
                          text1: "Account Created Successfully!",
                          text2: "Thank You For Joining Us And We're Excited To Have You On Board",
                          image: AppConstant.successicon,
                         );
                   },
                  child: customContainer(icon: AppConstant.google))),
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
              SizedBox(height: 15.h,),
              Wrap(
                runSpacing: 5,
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  CustomCheckBox(
                  isChecked: false,
                  ),
                  SizedBox(width: 7.w,),
                  customTextRegular(title: "By continuing, you agree to Martial App's ",fontSize: 12.h,fontWeight: FontWeight.w400),
                  customTextRegular(title: "Terms of Use",fontSize: 12.h,fontWeight: FontWeight.w400,color: AppColors.primaryblueColor),
                  customTextRegular(title: " & ",fontSize: 12.h,fontWeight: FontWeight.w400),
                  customTextRegular(title: "Privacy Policy.",fontSize: 12.h,fontWeight: FontWeight.w400,color: AppColors.primaryblueColor),
                ],
              ),
              SizedBox(height: 20.h,),
              customDivider(width: Get.width),
              SizedBox(height: 14.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  customTextRegular(title: "Already have an account.",fontSize: 14.h,fontWeight: FontWeight.w400),
                  GestureDetector(
                      onTap: (){
                        Get.to(()=> const SignIn());
                      },
                      child: customTextRegular(title: " Login",fontSize: 14.h,fontWeight: FontWeight.w500,color: AppColors.primaryblueColor)),
                ],
              ),
              SizedBox(height: 30.h,),
            ],
          ),
        ),
      ),
    );
  }
}
