import 'package:ev_martial/view/screens/terms%20and%20conditions/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utils/app_colors.dart';
import '../../../widgets/custom_text.dart';

// ignore: must_be_immutable
class LawsAndRegulations extends StatelessWidget {
   LawsAndRegulations({super.key});
List<String> laws = [
  'Terms & Conditions',
  'Privacy Policy ',
  'Security Regulations',
  'Advertising Regulations',
  'Location Data and GPS Laws',
  'App Store Guidelines',
  'Communication and Encryption Laws',
  'Content Moderation and Community Guidelines',
  'User Age Restrictions',
];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        customTextBold(title: 'Laws & Regulations', fontWeight: FontWeight.w500, fontSize: 16.h,color: AppColors.darkgrey),
          SizedBox(height: 10.h,),
          Container(
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(8),
             border: Border.all(color: AppColors.LightBorder,width: 1.5)
           ),
           child: Column(
             children: [
               ...List.generate(laws.length, (index) => Column(
                 children: [
                   InkWell(
                     splashColor: Colors.transparent,
                     highlightColor: Colors.transparent,
                     onTap: (){
                         switch (index) {
                      case 0:
                        Get.to(() => TermsAndConditions());
                        break;
                      case 1:
                        // Get.to(() => const SelectCurrency());
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
                           Expanded(child: customTextBold(title: laws[index], fontWeight: FontWeight.w400, fontSize: 15.h,color: AppColors.black)),
                           SizedBox(
                            width: MediaQuery.of(context).size.width * 0.2,
                           child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                             children: [
                               Icon(Icons.arrow_forward_ios_rounded,size: 18.h,),
                             ],
                           ))
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
          Center(child: GestureDetector(
            onTap: (){},
            child: customTextBold(title: 'Login ', fontWeight: FontWeight.w600, fontSize: 18.h,color: AppColors.primaryblueColor))),
        SizedBox(height: 20.h,),
      ],
    );
  }
}