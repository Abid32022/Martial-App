import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../models/dash_board_wellcome_sec_model.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_constant.dart';
import '../../../widgets/custom_bottomsheet.dart';
import '../../../widgets/custom_divider.dart';
import '../../../widgets/custom_text.dart';


void academydetail(BuildContext context){
    List<DashBoardWellcomeSecModel> list = [
    DashBoardWellcomeSecModel(AppConstant.address, '76 St Maurices Road, Priest Hutton, United Kingdom, LA6 2YZ'),
    DashBoardWellcomeSecModel(AppConstant.email, 'Stevens.wilson@gmail.com'),
    DashBoardWellcomeSecModel(AppConstant.phone, '+44 20 7123 4567'),
  ];
  custombottomsheet(
    context,
    content: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
     Row(
       crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SizedBox(
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customTextBold(title: "Apex Martial Arts Academy", fontWeight: FontWeight.w500, fontSize: 17.h,color: AppColors.black),
                SizedBox(height: 10.h,),
                customTextBold(title: "Karate, Krav Maga, Taekwondo, Muay Thai", fontWeight: FontWeight.w400, fontSize: 14.5.h,color: AppColors.black),
              SizedBox(height: 10.h,),
               ListView.builder(
                    clipBehavior: Clip.none,
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: list.length,
                    itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: index == 2 ? 0 : 10.h),
                      child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(list[index].icon,height: 20,),
                        SizedBox(width: 10.w,),
                        Expanded(child: customTextBold(title: list[index].text, fontWeight: FontWeight.w400, fontSize: 14.5.h,color: AppColors.black),)
                      ],
                      ),
                    );
                    },
                  ),
              ],
             ),
            ),
          ),
          SizedBox(width: 10.w,),
          Image.asset(AppConstant.academy1,height: 70.h,width: 70.w,),
        ],
      ),
      SizedBox(height: 15.h,),
      customDivider(
        height: 3,
        width: double.infinity
      ),
      SizedBox(height: 15.h,),
     customTextBold(title: "In Evesham, we're unique in our approach to education. We recognize that the learning needs of a five-year-old and a ten-year-old are quite different. That's why we have distinct classes for three age groups: 4-6, 7-9, and 10-14-year-olds. This ensures that each student receives tailored instruction for their stage of development.", fontWeight: FontWeight.w400, fontSize: 14.5.h,color: AppColors.black),
      ],
    )
  );
}