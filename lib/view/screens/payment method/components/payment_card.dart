import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_constant.dart';
import '../../../widgets/custom_switch.dart';
import '../../../widgets/custom_text.dart';

class PaymentCard extends StatefulWidget {
  const PaymentCard({super.key});

  @override
  State<PaymentCard> createState() => _PaymentCardState();
}

class _PaymentCardState extends State<PaymentCard> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         AnimationLimiter(
                     child: ListView.builder( 
                     clipBehavior: Clip.none,
                     padding: EdgeInsets.zero,
                     shrinkWrap: true,
                     scrollDirection: Axis.vertical,
                     physics: const BouncingScrollPhysics(parent: NeverScrollableScrollPhysics()),
                     itemCount: 5,
                     itemBuilder: (BuildContext context, int index) {
                     return AnimationConfiguration.staggeredList(
                     position: index,
                     delay: const Duration(milliseconds: 100),
                     child: SlideAnimation(
                      duration: const Duration(milliseconds: 2500),
                     curve: Curves.fastLinearToSlowEaseIn,
                    child: FadeInAnimation(
                      curve: Curves.fastLinearToSlowEaseIn,
                      duration: const Duration(milliseconds: 2500),
                     child: Padding(
                    padding: EdgeInsets.only(bottom: 15.h),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: (){
                        // setState(() {
                        //  isChecked = index;
                        // });
                      },
                      child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 19,vertical: 10.h),
                      decoration: const BoxDecoration(
                      border: Border(bottom: BorderSide(color: AppColors.LightBorder,width: 1.5),top: BorderSide(color: AppColors.LightBorder,width: 1.5))
                      ),
                      child: Column(
                        children: [
                         Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                      Image.asset(AppConstant.transactionimg,height: 45.h,width: 45.w,fit: BoxFit.cover,),
                                      SizedBox(width: 10.w,),
                                      Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                      customTextBold(title: "GoCardLess", fontWeight: FontWeight.w500, fontSize: 16.h,color: AppColors.black),
                                      SizedBox(height: 5.h,),
                                      customTextBold(title: "#CM-00234", fontWeight: FontWeight.w400, fontSize: 14.h,color: AppColors.darkgrey),
                                      ],
                                      )
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                       Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                         children: [
                                        index == 0 ? customTextBold(title: "Set Default", fontWeight: FontWeight.w400, fontSize: 12.h,color: AppColors.darkgrey) : const SizedBox(), 
                                           CustomSwitch(
                                            isSwitched: index == 0 ? true : false,
                                           ),
                                         ],
                                       ),
                                      SizedBox(height: 5.h,),
                                      customTextBold(title: "Expired at: 12/22", fontWeight: FontWeight.w400, fontSize: 14.h,color: AppColors.greencolor),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                              ),
                            ),
                          ],
                         ),
                        ],
                      ),
                     ),
                    ),
                    ),
                    ),
                   )
                 );
               }
             )
          ),
      ],
    );
  }
}
