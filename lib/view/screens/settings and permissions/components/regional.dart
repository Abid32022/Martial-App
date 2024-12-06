import 'package:ev_martial/view/screens/help%20and%20support/help_and_support.dart';
import 'package:ev_martial/view/screens/report%20bugs/report_bugs.dart';
import 'package:ev_martial/view/screens/select%20language/select_language.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utils/app_colors.dart';
import '../../../widgets/custom_text.dart';
import '../../select currency/select_currency.dart';

// ignore: must_be_immutable
class Regional extends StatelessWidget {
   Regional({super.key});
List<String> list = [
  'Language',
  'Currency',
];
List<String> list2 = [
  'Help & Support',
  'Feedback',
  'Report Bugs',
  'FAQs',
];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         customTextBold(title: 'Regional', fontWeight: FontWeight.w500, fontSize: 16.h,color: AppColors.darkgrey),
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
                        Get.to(() => const SelectLanguage());
                        break;
                      case 1:
                        Get.to(() => const SelectCurrency());
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
                           Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                             children: [
                              customTextBold(title: index == 0 ? 'English' : 'Pound', fontWeight: FontWeight.w400, fontSize: 15.h,color: AppColors.black),
                              SizedBox(width: 10.w,),
                               Icon(Icons.arrow_forward_ios_rounded,size: 18.h,),
                             ],
                           )
                         ],
                       ),
                     ),
                   ),
                 ],
               ),
               )
               ]
               )
               ),
          SizedBox(height: 20.h,),
          customTextBold(title: 'Regional', fontWeight: FontWeight.w500, fontSize: 16.h,color: AppColors.darkgrey),
          SizedBox(height: 10.h,),
          Container(
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(8),
             border: Border.all(color: AppColors.LightBorder,width: 1.5)
           ),
           child: Column(
             children: [
               ...List.generate(list2.length, (index) => Column(
                 children: [
                   InkWell(
                     splashColor: Colors.transparent,
                     highlightColor: Colors.transparent,
                     onTap: (){
                       switch (index) {
                      case 0:
                        Get.to(() => const HelpAndSupport());
                        break;
                      case 1:
                        // Get.to(() => const Academy());
                        break;
                      case 2:
                        Get.to(() => const ReportBugs());
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
                           customTextBold(title: list2[index], fontWeight: FontWeight.w400, fontSize: 15.h,color: AppColors.black),
                           Icon(Icons.arrow_forward_ios_rounded,size: 18.h,)
                         ],
                       ),
                     ),
                   ),
                 ],
               ),
               )
               ]
               )
               )
      ],
    );
  }
}