import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_constant.dart';
import '../../widgets/appbar_without_tabs.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/custom_textfield.dart';
import '../../widgets/drawer.dart';
import '../auth/widgets/auth_bottomsheet.dart';
import '../auth/widgets/custom_check_box.dart';

class SelectCurrency extends StatefulWidget {
  const SelectCurrency({super.key});

  @override
  State<SelectCurrency> createState() => _SelectCurrencyState();
}

class _SelectCurrencyState extends State<SelectCurrency> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  List<String> currencies = [
    'Euro (EUR)',
    'Pound Sterling (GBP)',
    'United States Dollar (USD)',
    'Brazilian Real (BRL)',
    'United Arab Emirates Dirham (UAE)',
    'Pakistani Rupee (PKR)',
    'Euro (EUR)',
    'Pound Sterling (GBP)',
    'United States Dollar (USD)',
    'Brazilian Real (BRL)',
    'United Arab Emirates Dirham (UAE)',
  ];
  int isSelect = 0;
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
       'Currency',
    ), 
    ),
     drawer: customDrawer(context),
      bottomNavigationBar: Container(
        height: 80.h,
        padding: EdgeInsets.symmetric(horizontal: 20.w,),
        color: AppColors.Background,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             customButton(
              fontColor: AppColors.primaryblueColor,
              colors: AppColors.Secondary,
                text: "Select",
                borderRadius: 8.87.r,
                 ontap:(){
                  Get.back();
                 authcustombottomsheet(
                  image: AppConstant.successicon,
                  context,
                  text1: 'Successful',
                  text2: 'Congratulations! Your currency update has been successfully applied'
                  );
                  }
              ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
         customTextField(
            borderRadius: 0,
            hinttextcolor: AppColors.darkgrey,
            filled: true,
            fillcolor: AppColors.Secondary.withOpacity(0.6),
            // bordercolor: Colors.red,
            suffix: true,
            suffixWidget: Padding(
            padding: const EdgeInsets.only(right: 19),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 12.h),
              // ignore: deprecated_member_use
              child: SvgPicture.asset(AppConstant.search,height: 10.h,width: 10.w,color: AppColors.darkgrey,),
            ),
            // SvgPicture.asset('assets/icons/ic_password.svg',height: 15.h,width: 11.w,),
              ),
              hintText: "Find a Currency",
              ),
              SizedBox(height: 20.h,),
              Padding(
                padding: const EdgeInsets.only(left: 19),
                child: customTextRegular(title: 'Suggested for you',fontSize: 17.h,fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 8.h,),
              ...List.generate(
                currencies.length, (index) => Padding(
                  padding: EdgeInsets.only(bottom: 10.h),
                  child: Column(
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: (){
                        setState(() {
                          isSelect = index;
                          });
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                            border: Border(top: BorderSide(color: AppColors.LightBorder,width: 1.5),bottom: BorderSide(color: AppColors.LightBorder,width: 1.5))
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 19,vertical: 5.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            Expanded(child: customTextRegular(title: currencies[index],fontSize: 16.h,fontWeight: FontWeight.w400)),
                            InkWell(
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: (){
                                setState(() {
                                   isSelect = index;
                                });
                              },
                            child: SizedBox(
                            height: 30.h,
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomCheckBox(isChecked: isSelect == index ? true : false,iscircle: true,istap: false),
                              ],
                            ))),
                            ],
                          ),
                        ),
                      ),
                   index == 5 ? Padding(
                    padding: EdgeInsets.only(left: 19,top: 15.h,bottom: 5.h),
                    child: Row(
                      children: [
                        customTextRegular(title: 'All currencies',fontSize: 17.h,fontWeight: FontWeight.w600),
                      ],
                    ),
                  ): const SizedBox()
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}