import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../../../register_unable_provider.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_constant.dart';
import '../../widgets/custom_text.dart';

// ignore: must_be_immutable
class Gender extends StatelessWidget {
   Gender({super.key});
  List<String> genderList = [
    "Male",
    "Female",
    "Others",
  ];
  @override
  Widget build(BuildContext context) {
    return Consumer<RegisterUnableProvider>(
            builder: (context,value,provider){
              return SingleChildScrollView(
                child: Column(
                      children: [
                        SizedBox(height: 40.h,),
                        Center(child: Image.asset(AppConstant.icloginlogoBlueOne,height: 112.h,width: 187.w,)),
                       SizedBox(height: 36.h,),
                      customTextBold(title: "What is your gender?", fontWeight: FontWeight.w500, fontSize: 22.h),
                      SizedBox(height: 5.h,),
                      Center(child: customTextBold(title: "Let us help find the best plan for you", fontWeight: FontWeight.w400, fontSize: 15.h,textAlign: TextAlign.center)),
                        SizedBox(height: 36.h,),
                         Wrap(
                          runSpacing: 12.h,
                          children: List.generate(3, (index) =>  GestureDetector(
                            onTap: (){
                              value.changeIndex(index);
                            },
                            child: Container(
                              height: 52.h,
                              width: Get.width,
                              decoration: BoxDecoration(
                                color:value.currentIndex== index? AppColors.primaryblueColor: Colors.transparent,
                                  border: Border.all(color: AppColors.LightBorder),
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              child: Center(child:Center(child: customTextBold(title: genderList[index], fontWeight: FontWeight.w400, fontSize: 16.h,color:value.currentIndex== index? AppColors.white:AppColors.black)),
                              ),
                            ),
                          ),
                          ),
                        ),
                      ],
                    ),
              );
       }
    );
  }
}