import 'package:ev_martial/utils/app_colors.dart';
import 'package:ev_martial/view/screens/auth/widgets/custom_check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../models/dash_board_wellcome_sec_model.dart';
import '../../../utils/app_constant.dart';
import '../../widgets/appbar_without_tabs.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/custom_textfield.dart';
import '../../widgets/drawer.dart';
import '../auth/widgets/auth_bottomsheet.dart';

class SelectLanguage extends StatefulWidget {
  const SelectLanguage({super.key});

  @override
  State<SelectLanguage> createState() => _SelectLanguageState();
}

class _SelectLanguageState extends State<SelectLanguage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int isSelect = 0;
  List<DashBoardWellcomeSecModel> countries = [
    DashBoardWellcomeSecModel(AppConstant.english, 'English (UK)'),
    DashBoardWellcomeSecModel(AppConstant.portuguese, 'Portuguese (BR)'),
    DashBoardWellcomeSecModel(AppConstant.spanish, 'Spanish '),
    DashBoardWellcomeSecModel(AppConstant.arabic, 'Arabic'),
    DashBoardWellcomeSecModel(AppConstant.urdu, 'Urdu'),
  ];
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
       'Language',
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
                  text2: 'Congratulations! Your language update has been applied successfully.'
                  );
                  }
              ),
          ],
        ),
      ),
     body: Column(
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
            hintText: "Find a Language",
            ),
            SizedBox(height: 20.h,),
            ...List.generate(
              countries.length, (index) => Padding(
                padding: EdgeInsets.only(bottom: 10.h),
                child: InkWell(
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
                        Row(
                        children: [
                         Image.asset(countries[index].icon,height: 30.h,),
                         SizedBox(width: 10.w,),
                         customTextRegular(title: countries[index].text,fontSize: 16.h,fontWeight: FontWeight.w400),
                        ],
                      ),
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
                      width: 35.w,
                      child: Center(child: CustomCheckBox(isChecked: isSelect == index ? true : false,iscircle: true,istap: false)))),
                      ],
                    ),
                  ),
                ),
              ))
      ],
     ),
    );
  }
}