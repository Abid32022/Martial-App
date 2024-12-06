import 'package:ev_martial/utils/app_constant.dart';
import 'package:ev_martial/view/screens/auth/widgets/auth_bottomsheet.dart';
import 'package:ev_martial/view/screens/auth/widgets/custom_check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../utils/app_colors.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_text.dart';
import '../../../widgets/custom_textfield.dart';

void addNewCard(BuildContext context,){
  ExpansionTileController controller1 = ExpansionTileController();
  bool isicon = false;
  List<String> contries = [
    'Pakistan',
    'India',
    'Nepal',
    'China',
  ];
  int isChecked = -1;
  String selectedCountry = "";
   showModalBottomSheet(
     backgroundColor: Colors.transparent,
     isScrollControlled: true,
     context: context,
     clipBehavior: Clip.none,
      builder: (context) {
     return StatefulBuilder(
     builder: (BuildContext context, StateSetter setState ) {
     return SizedBox(
      height: MediaQuery.of(context).size.height * 0.63,
       child: Container(
        width: double.infinity,
       decoration: const BoxDecoration(
         color: AppColors.white,
         borderRadius: BorderRadius.only(
         topLeft: Radius.circular(14),
       topRight:  Radius.circular(14)
       )
         ),
         child: SingleChildScrollView(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  child: Padding(
                    padding: EdgeInsets.only(left: 19.w,right: 19.w,top: 40.h,bottom: 10.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        customTextBold(title: "Payment Information", fontWeight: FontWeight.w500, fontSize: 20.h,color: AppColors.primaryblueColor),
                     SizedBox(height: 10.h,),
                      customTextBold(title: "Account Holder", fontWeight: FontWeight.w500, fontSize: 15.h,color: AppColors.black),
                      SizedBox(height: 5.h,),
                        customTextField(
                        hintText: "Enter Account holder Name",
                        ),
                      SizedBox(height: 15.h,),
                      customTextBold(title: "Card Details", fontWeight: FontWeight.w500, fontSize: 15.h,color: AppColors.black),
                      SizedBox(height: 5.h,),
                        customTextField(
                         hintText: "Enter Card Number",
                        ),
                        SizedBox(height: 5.h,),
                        Row(
                          children: [
                            Expanded(
                              child: customTextField(
                                 hintText: "MM/ YY",
                              ),
                            ),
                            SizedBox(width: 10.w,),
                             Expanded(
                               child: customTextField(
                                 hintText: "CVV",
                                ),
                             ),
                          ],
                        ),
                      SizedBox(height: 15.h,),
                      customTextBold(title: "Country or Region ", fontWeight: FontWeight.w500, fontSize: 15.h,color: AppColors.black),
                      SizedBox(height: 5.h,),
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
                          title: customTextBold(title: selectedCountry.isNotEmpty ? selectedCountry : "Select Country", fontWeight: FontWeight.w500, fontSize: 15.h,color: AppColors.darkgrey),
                          children: <Widget>  [
                           ...List.generate(
                            contries.length,
                            (i) => InkWell(
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
                        SizedBox(height: 5.h,),
                        customTextField(
                           hintText: "Enter Zipcode",
                        ),
                        SizedBox(height: 15.h,),
                        customButton(
                        fontColor: AppColors.primaryblueColor,
                        colors: AppColors.Secondary,
                          text: "Save now",
                          borderRadius: 8.87.r,
                           ontap:(){
                            Navigator.pop(context);
                            authcustombottomsheet(context,image: AppConstant.successicon,text1: 'Successful',text2: 'Congratulations! on successfully adding your new card! You\'re all set to enjoy secure and hassle-free transactions.');
                             }
                        ),
                      ],
                    ),
                  ),
                ),
              ),
                Positioned(
            top: 10,
            right: 19,
            child: GestureDetector(
            onTap: (){
             Get.back();
             },
           child: SvgPicture.asset(AppConstant.icbackcross,height: 24.h,width: 24.w,))),
            ],
          ),
         ),
       ),
     );
     }
     );
      },
   );
}

  
