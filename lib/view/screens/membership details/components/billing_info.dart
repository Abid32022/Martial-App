import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../models/dash_board_wellcome_sec_model.dart';
import '../../../../utils/app_colors.dart';
import '../../../widgets/custom_text.dart';

// ignore: must_be_immutable
class BillingInfo extends StatelessWidget {
   BillingInfo({super.key});
List<DashBoardWellcomeSecModel> billinglist = [
  DashBoardWellcomeSecModel('Sub-total', '£60.00'),
  DashBoardWellcomeSecModel('Service Fees', '£0.18'),
  DashBoardWellcomeSecModel('Tax', '£67.98'),
  DashBoardWellcomeSecModel('Grand - Total ', '£67.98'),
];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20.h,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19),
          child: customTextBold(title: 'Billing Info', fontWeight: FontWeight.w500, fontSize: 18.h,color: AppColors.black),
        ),
        SizedBox(height: 10.h,),
        ...List.generate(billinglist.length, (index) => Container(
          decoration: BoxDecoration(
          border: Border(bottom: const BorderSide(width: 1.5,color: AppColors.LightBorder),top: index == 0 ? const BorderSide(width: 1.5,color: AppColors.LightBorder) : BorderSide.none)
           ),
          padding: EdgeInsets.symmetric(horizontal: 19,vertical: 7.h),
          child: Column(
            children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               customTextBold(title: billinglist[index].icon, fontWeight: FontWeight.w400, fontSize: 15.h,color: AppColors.black),
               customTextBold(title: billinglist[index].text, fontWeight: FontWeight.w500, fontSize: 17.h,color: AppColors.primaryblueColor),
              ],
            )
            ],
          ),
        ))
      ],
    );
  }
}