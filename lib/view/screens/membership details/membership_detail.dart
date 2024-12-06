import 'package:ev_martial/view/screens/membership%20details/components/billing_info.dart';
import 'package:ev_martial/view/screens/membership%20details/components/daily_passes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_constant.dart';
import '../../widgets/appbar_without_tabs.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';
import '../../widgets/drawer.dart';
import '../auth/widgets/auth_bottomsheet.dart';

class MemberShipDetail extends StatelessWidget {
   MemberShipDetail({super.key});
final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
       preferredSize: Size(MediaQuery.of(context).size.width,100),
      child: appBarwithoutTabs(
      context,
      // Function
      (){
        _scaffoldKey.currentState!.openDrawer();
      },
      // Title
       'Membership',  
    ), 
    ),
    drawer: customDrawer(context,),
    body: SingleChildScrollView(
      child: Column(
        children: [
       const DailyPasses(),
       BillingInfo(),
       SizedBox(height: 60.h,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19),
          child: Column(
            children: [
              customTextField(
                isKeyboard: true,
                bordercolor: AppColors.Secondary,
                hinttextcolor: AppColors.primaryblueColor,
                filled: true,
                fillcolor: AppColors.Secondary.withOpacity(0.6),
                // bordercolor: Colors.red,
                suffix: true,
                suffixWidget: Padding(
                padding: EdgeInsets.only(top: 5.h,bottom: 5.h,right: 5.w),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.primaryblueColor.withOpacity(0.2),width: 1),
                    color: AppColors.Secondary,
                    borderRadius: BorderRadius.circular(6)
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 6.h,horizontal: 6),
                    // ignore: deprecated_member_use
                    child: SvgPicture.asset(AppConstant.card,height: 12.h,width: 12.w,),
                  ),
                ),
                // SvgPicture.asset('assets/icons/ic_password.svg',height: 15.h,width: 11.w,),
                  ),
                  hintText: "**** **** **** 2321",
                  ),
                   SizedBox(height: 15.h,),
                customButton(
                colors: AppColors.Secondary,
                text: "Pay Now",
                borderRadius: 8.87,
                ontap: (){
                  authcustombottomsheet(
                     context,
                     text1: "Payment Successfully",
                     text2: "Thank you for your payment; your purchase has been successfully processed.",
                     image: AppConstant.successicon,
                   );
                }
              ),
              SizedBox(height: 20.h,),
            ],
          ),
        ),
      ],
      ),
    ),
    );
  }
}