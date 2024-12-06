import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../models/dash_board_wellcome_sec_model.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_constant.dart';
import '../../../widgets/custom_text.dart';

// ignore: must_be_immutable
class WellComeSec extends StatelessWidget {
   WellComeSec({super.key});
  List<DashBoardWellcomeSecModel> list = [
    DashBoardWellcomeSecModel(AppConstant.address, '76 St Maurices Road, Priest Hutton, United Kingdom, LA6 2YZ'),
    DashBoardWellcomeSecModel(AppConstant.email, 'Stevens.wilson@gmail.com'),
    DashBoardWellcomeSecModel(AppConstant.phone, '+44 20 7123 4567'),
    DashBoardWellcomeSecModel(AppConstant.date, '7D.O.B: 13 March, 2001'),
    DashBoardWellcomeSecModel(AppConstant.calender, 'Join From: 13 March, 2023'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 20.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.lightbluecolor
          ),
          child: Column(
            children: [
            SizedBox(
             child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        customTextBold(title: "Hello! Good Morning", fontWeight: FontWeight.w400, fontSize: 15.h,color: AppColors.black),
                        SizedBox(height: 10.h,),
                        customTextBold(title: "Stevens Wilson 👋", fontWeight: FontWeight.w500, fontSize: 18.h,color: AppColors.black),
                      ],
                    ),
                  ),
                ),
                 Expanded(
                   child: SizedBox(
                    height: 63.h,
                    child: Stack(
                      children: [
                        Positioned(
                          right: 40,
                          child: CircleAvatar(
                            maxRadius: 30.h,
                            backgroundImage: const AssetImage(AppConstant.profile),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          top: 0,
                          child: SvgPicture.asset(AppConstant.editprofile,height: 23,)
                        )
                      ],
                    ),
                   ),
                 )
              ],
             ),
            ),
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
                      padding: EdgeInsets.only(bottom: index == 4 ? 0 : 15.h),
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
         );
  }
}