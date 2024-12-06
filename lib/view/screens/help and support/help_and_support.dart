import 'package:ev_martial/utils/app_constant.dart';
import 'package:ev_martial/view/screens/auth/forgot_passward.dart';
import 'package:ev_martial/view/screens/auth/widgets/auth_bottomsheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../utils/app_colors.dart';
import '../../widgets/appbar_without_tabs.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/custom_textfield.dart';
import '../../widgets/drawer.dart';
import '../auth/widgets/custom_check_box.dart';

class HelpAndSupport extends StatefulWidget {
   const HelpAndSupport({super.key});

  @override
  State<HelpAndSupport> createState() => _HelpAndSupportState();
}

class _HelpAndSupportState extends State<HelpAndSupport> {
   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  ExpansionTileController controller1 = ExpansionTileController();
  bool isicon = false;
  List<String> contries = [
    'Topic 1',
    'Topic 2',
    'Topic 3',
    'Topic 4',
  ];
  int isChecked = -1;
  String selectedCountry = "";
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
       'Help & Support',
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
                text: "Submit",
                borderRadius: 8.87.r,
                 ontap:(){
                 Get.back();
                 authcustombottomsheet(
                  image: AppConstant.successicon,
                  context,
                  text1: 'Successful',
                  text2: 'Thank you for reaching out. We will respond to your email or provided phone number within 24 hours.'
                  );
                  }
              ),
          ],
        ),
      ),
     body: SingleChildScrollView(
       child: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 19),
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h,),
            Center(child: SvgPicture.asset(AppConstant.logo2,height: 116.h,)),
            SizedBox(height: 30.h,),
            customTextRegular(title: 'Full Name',fontSize: 15.h,fontWeight: FontWeight.w500),
                SizedBox(height: 8.h,),
                customTextField(
                  // bordercolor: Colors.red,
                  prefixImage: Padding(
                    padding: const EdgeInsets.all(14),
                    child: SvgPicture.asset(AppConstant.icusername,height: 15.h,width: 11.w,),
                    // SvgPicture.asset('assets/icons/ic_password.svg',height: 15.h,width: 11.w,),
                  ),
                    hintText: "Your Name",
                ),
                 SizedBox(height: 20.h,),
                customTextRegular(title: 'Mobile Number',fontSize: 15.h,fontWeight: FontWeight.w500),
                SizedBox(height: 8.h,),
               const PhoneField(),
               SizedBox(height: 5.h,),
               customTextRegular(title: 'Email id',fontSize: 15.h,fontWeight: FontWeight.w500),
                SizedBox(height: 8.h,),
                customTextField(
                  // bordercolor: Colors.red,
                  prefixImage: Padding(
                    padding: const EdgeInsets.all(14),
                    child: SvgPicture.asset(AppConstant.icemail,height: 15.h,width: 11.w,),
                    // SvgPicture.asset('assets/icons/ic_password.svg',height: 15.h,width: 11.w,),
                  ),
                    hintText: "Enter Email",
                ),
                SizedBox(height: 20.h,),
                 customTextRegular(title: 'Topic',fontSize: 15.h,fontWeight: FontWeight.w500),
                SizedBox(height: 8.h,),
                  Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: AppColors.LightBorder,width: 1)
                        ),
                        child: ExpansionTile(
                        childrenPadding: EdgeInsets.only(left: 10.w),
                        expandedCrossAxisAlignment: CrossAxisAlignment.start,
                         expandedAlignment: Alignment.topLeft,
                         trailing: InkWell(
                         child: Icon(isicon ? Icons.keyboard_arrow_up_rounded : Icons.keyboard_arrow_down_rounded, color: AppColors.darkgrey,)),
                          onExpansionChanged: (bool onexpanded1){
                               setState(() {
                                isicon = onexpanded1;
                              });
                            },
                           tilePadding: EdgeInsets.only(left: 10.w),
                           clipBehavior: Clip.none,
                           controller: controller1,
                          shape: const RoundedRectangleBorder(side: BorderSide.none),
                          title: customTextBold(title: selectedCountry.isNotEmpty ? selectedCountry : "Select Topic", fontWeight: FontWeight.w500, fontSize: 15.h,color: AppColors.darkgrey),
                          children: <Widget>  [
                           ...List.generate(
                            contries.length,
                            (i) => InkWell(
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: (){
                              setState(() {
                              selectedCountry = contries[i]; 
                              isChecked = i;
                            });
                            // Close the ExpansionTile (optional)
                              },
                              child: Container(
                                width: double.infinity,
                                padding: EdgeInsets.symmetric(vertical: 8.h),
                                child: Row(
                                  children: [
                                    InkWell(
                                    onTap: (){
                                      setState(() {
                                      selectedCountry = contries[i]; 
                                      isChecked = i;
                                    });
                                    },
                                    child: CustomCheckBox(isChecked: isChecked == i ? true : false,istap: false)),
                                    SizedBox(width: 10.w,),
                                    customTextBold(title: contries[i], fontWeight: FontWeight.w400, fontSize: 15.h,color: AppColors.darkgrey),
                                  ],
                                )),
                            ),
                           ),
                           SizedBox(height: 20.h,),
                           ]
                          ),
                      ),
                SizedBox(height: 20.h,),
               customTextRegular(title: 'Description',fontSize: 15.h,fontWeight: FontWeight.w500),
                SizedBox(height: 8.h,),
                SizedBox(
                  height: 190.h,
                  child: customTextField(
                    maxLines: 7,
                    // bordercolor: Colors.red,
                      hintText: "Enter where do you need help today?",
                  ),
                ),
          ],
         ),
       ),
     ),
    );
  }
}