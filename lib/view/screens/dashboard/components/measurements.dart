import 'package:ev_martial/utils/app_colors.dart';
import 'package:ev_martial/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../models/dashb_membership_model.dart';
import '../../../widgets/custom_text.dart';

// ignore: must_be_immutable
class Measurements extends StatelessWidget {
   Measurements({super.key});
List<MemmberShipAndAttendenceModel> measurements = [
  MemmberShipAndAttendenceModel(AppConstant.weightcategory,'Weight Category','Medium Heavy','82.5KG'),
  MemmberShipAndAttendenceModel(AppConstant.kimonosize,'Kimono Size','Adult ','A2'),
  MemmberShipAndAttendenceModel(AppConstant.beltsize,'Belt Size','Adult ','--'),
];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
           padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 13.h),
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(14),
             border: Border.all(color: AppColors.LightBorder,width: 1.5),
           ),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               customTextBold(title: 'Your Measurements', fontWeight: FontWeight.w500, fontSize: 17.h,color: AppColors.primaryblueColor),
               SizedBox(height: 10.h,),
               ListView.builder(
             clipBehavior: Clip.none,
             padding: EdgeInsets.zero,
             shrinkWrap: true,
             physics: const NeverScrollableScrollPhysics(),
             itemCount: measurements.length,
             itemBuilder: (BuildContext context, int index) {
             return Padding(
               padding: EdgeInsets.only(bottom: 10.h),
               child: Row(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Container(
                        height: 46.h,
                        width: 48.w,
                        //  padding: EdgeInsets.symmetric(horizontal: 6.w,vertical: 6.h),
                         decoration: BoxDecoration(
                         color: AppColors.lightbluecolor,
                         borderRadius: BorderRadius.circular(5.59),
                       ),
                       child: Center(
                         child: SvgPicture.asset(measurements[index].icon,height: index == 2 ? 23 : 32.h,width: 32.w,),
                       ),
                       ),
                       SizedBox(width: 13.w,),
                       Container(
                         height: 14.h,
                         width: 5.95.w,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(3.76),
                           color: AppColors.primaryblueColor.withOpacity( index == 1 ? 0.6 : index == 2 ? 0.3 : 0.9)
                         ),
                       ),
                       SizedBox(width: 13.w,),
                       Expanded(
                         child: SizedBox(
                           child: Row(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   customTextBold(title: measurements[index].cardname, fontWeight: FontWeight.w500, fontSize: 16.h,color: AppColors.black),
                                   SizedBox(height: 5.h,),
                                   customTextBold(title: measurements[index].text1, fontWeight: FontWeight.w400, fontSize: 14.h,color: AppColors.darkgrey),
                                 ],
                               ),
                               customTextBold(title: measurements[index].text2, fontWeight: FontWeight.w500, fontSize: 16.h,color: AppColors.black),
                             ],
                           ),
                         ),
                       )
                     ],
                     )
          );
             }
      ),
             ]
             ),
        ),
           
      ]
       );
  }
}