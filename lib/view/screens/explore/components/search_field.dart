import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_constant.dart';
import '../../../widgets/custom_text.dart';
import '../../../widgets/custom_textfield.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Column(
        children: [
          customTextBold(
            textAlign: TextAlign.center,
            title:
           'Which workout class or activity are you interested in joining?',
            fontWeight: FontWeight.w500, fontSize: 20.h,color: AppColors.darkbluecolor
            ),
            SizedBox(height: 20.h,),
            customTextField(
              suffix: true,
              suffixWidget: Container(
               padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 4.h),
               child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 10.h),
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: AppColors.primaryblueColor
                ),
                child: SvgPicture.asset(AppConstant.filter,height: 20,),
               ),
              ),
              prefixImage: Padding(
              padding: const EdgeInsets.all(14),
              child: SvgPicture.asset(AppConstant.search,height: 15.h,width: 11.w,),
             ),
               hintText: "Search here",
              ),
        ],
      ),
    );
  }
}