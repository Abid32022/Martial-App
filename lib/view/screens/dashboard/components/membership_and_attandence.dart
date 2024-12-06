import 'package:ev_martial/models/dashb_membership_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_constant.dart';
import '../../../widgets/custom_text.dart';

// ignore: must_be_immutable
class MemberShipAndAttendence extends StatelessWidget {
 MemberShipAndAttendence({super.key});

 List<MemmberShipAndAttendenceModel> cards = [
  MemmberShipAndAttendenceModel(AppConstant.memebership, 'MemberShip', 'Active', 'Expired'),
  MemmberShipAndAttendenceModel(AppConstant.attendance, 'Attendance', 'Present', 'Absent'),
  MemmberShipAndAttendenceModel(AppConstant.memebership, 'MemberShip', 'Active', 'Expired'),
  MemmberShipAndAttendenceModel(AppConstant.attendance, 'Attendance', 'Present', 'Absent'),
 ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125.h,
      child: ListView.builder(
                  clipBehavior: Clip.none,
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: cards.length,
                  itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: Container(
                   padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: AppColors.LightBorder,width: 1.5),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(cards[index].icon,height: 38,),
                          customTextBold(title: cards[index].cardname, fontWeight: FontWeight.w500, fontSize: 15.h,color: AppColors.black),
                        ],
                      ),
                      SizedBox(height: 10.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          customTextBold(title: cards[index].text1, fontWeight: FontWeight.w400, fontSize: 15.h,color: AppColors.black),
                          Row(
                            children: [
                              customTextBold(title: "170", fontWeight: FontWeight.w500, fontSize: 16.h,color: AppColors.greencolor),
                              SizedBox(width: 5.w,),
                              SvgPicture.asset(AppConstant.arrowup,height: 14,),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 5.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          customTextBold(title: cards[index].text2, fontWeight: FontWeight.w400, fontSize: 15.h,color: AppColors.black),
                          Row(
                            children: [
                              customTextBold(title: "20", fontWeight: FontWeight.w500, fontSize: 16.h,color: AppColors.redcolor),
                              SizedBox(width: 5.w,),
                              SvgPicture.asset(AppConstant.arrowdown,height: 14,),
                            ],
                          ),
                        ],
                      ),
                      ],
                    ),
                  )
                  );
                  },
                ),
    );
  }
}