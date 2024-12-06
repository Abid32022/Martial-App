import 'package:ev_martial/utils/app_colors.dart';
import 'package:ev_martial/utils/app_constant.dart';
import 'package:ev_martial/view/screens/auth/forgot_pass_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../widgets/custom_text.dart';

// ignore: must_be_immutable
class SettingsProfileComponent extends StatelessWidget {
   SettingsProfileComponent({super.key});
List<String> list = [
  'Edit Profile',
  'Change Password'
];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 19.w,vertical: 10.h),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.LightBorder,width: 1.5)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Row(
              children: [
                CircleAvatar(
                 radius: 30.r,
                 backgroundImage: const AssetImage(AppConstant.profile),
                ),
                SizedBox(width: 10.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  customTextBold(title: "Adnan Qureshi", fontWeight: FontWeight.w500, fontSize: 18.h,color: AppColors.black),
                  SizedBox(height: 7.h,),
                  customTextBold(title: "+1 (917) 470-9281", fontWeight: FontWeight.w400, fontSize: 15.h,color: AppColors.black),
                  ],
                )
              ],
            )
            ],
          ),
        ),
        SizedBox(height: 20.h,),
         Padding(
           padding: EdgeInsets.symmetric(horizontal: 19.w),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
             children: [
              customTextBold(title: 'Profile', fontWeight: FontWeight.w500, fontSize: 16.h,color: AppColors.darkgrey),
              SizedBox(height: 10.h,),
               Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppColors.LightBorder,width: 1.5)
                ),
                child: Column(
                  children: [
                    ...List.generate(list.length, (index) => Column(
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: (){
                             switch (index) {
                              case 0:
                                // Get.to(() => const SelectLanguage());
                                break;
                              case 1:
                                Get.to(() => const ForgotPasswardNavigation());
                                break;
                              default:
                                // Handle default case (if any)
                            }
                          },
                          child: Container(
                            decoration: BoxDecoration(
                            border: Border(top: BorderSide(color: index == 0 ? Colors.transparent : AppColors.LightBorder,width: 1.5))
                          ),
                            padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 10.2),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                customTextBold(title: list[index], fontWeight: FontWeight.w400, fontSize: 15.h,color: AppColors.black),
                                Icon(Icons.arrow_forward_ios_rounded,size: 18.h,)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    )
                   
                    
                  ],
                ),
                ),
             ],
           ),
         )
      ],
    );
  }
}