import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/app_colors.dart';
import '../../../widgets/custom_text.dart';

class TopMemberShips extends StatelessWidget {
  const TopMemberShips({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            customTextBold(title:'Top Memberships', fontWeight: FontWeight.w500, fontSize: 17.h,color: AppColors.darkbluecolor),
            customTextBold(title:'See all', fontWeight: FontWeight.w400, fontSize: 17.h,color: AppColors.primaryblueColor),
          ],
        ),
        SizedBox(height: 10.h,),
        Container(
           padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 13.h),
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(14),
             border: Border.all(color: AppColors.LightBorder,width: 1.5),
           ),
           child: const Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [

                      ],
                    )
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        
                      ],
                    )
                  )
                ],
              )
            ],
           ),
        )
      ],
    );
  }
}