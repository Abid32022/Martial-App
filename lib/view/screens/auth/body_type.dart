import 'package:ev_martial/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../utils/app_constant.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/custom_textfield.dart';

// ignore: must_be_immutable
class BodyType extends StatelessWidget {
   BodyType({super.key});
  List<String> btnlistforheight = [
   'in',
   'cm',
  ];
   List<String> btnlistforwidth = [
   'lbs',
   'kg',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 40.h,), 
         Center(child: Image.asset(AppConstant.icloginlogoBlueOne,height: 112.h,width: 187.w,)),
         SizedBox(height: 36.h,),
          customTextBold(title: "What is your body type", fontWeight: FontWeight.w500, fontSize: 22.h),
          SizedBox(height: 5.h,),
          Center(child: customTextBold(title: "Lets  us to find the best  plan for you", fontWeight: FontWeight.w400, fontSize: 15.h,textAlign: TextAlign.center)),
           SizedBox(height: 36.h,),
          // const BodyTypeButtons(),
            // BodyTypeButtons(),
           customTextField(
            isKeyboard: true,
            suffix: true,
             suffixWidget: Container(
              padding: EdgeInsets.symmetric(vertical: 7.h),
              child: const BodyTypeButtons(isvalue: true),
              ),
             hintText: "Height",
              ),
              SizedBox(height: 10.h,),
           customTextField(
            isKeyboard: true,
            suffix: true,
             suffixWidget: Container(
              padding: EdgeInsets.symmetric(vertical: 7.h),
              child: const BodyTypeButtons(isvalue: false),
              ),
             hintText: "Weight",
              ),

        ],
      ),
    );
  }
}


// ignore: must_be_immutable
class BodyTypeButtons extends StatefulWidget {
  final bool isvalue;
   const BodyTypeButtons({super.key, required this.isvalue,});

  @override
  State<BodyTypeButtons> createState() => _BodyTypeButtonsState();
}

class _BodyTypeButtonsState extends State<BodyTypeButtons> {
   List<String> btnlistforheight = [
   'in',
   'cm',
  ];
   List<String> btnlistforWeight = [
   'lbs',
   'kg',
  ];
int selectedtab = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
       itemCount: 2,
       clipBehavior: Clip.none,
       physics: const NeverScrollableScrollPhysics(),
       shrinkWrap: true,
       itemBuilder: (BuildContext context, int index) {
       return Padding(
         padding: const EdgeInsets.only(right: 5),
         child: GestureDetector(
          onTap: (){
            setState(() {
              selectedtab = index;
            });
          },
           child: Container(
            height: 30,
            width: 44,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: selectedtab == index ? Colors.transparent : AppColors.LightBorder,width: 1.5),
              color: selectedtab == index ? AppColors.primaryblueColor : Colors.transparent,
            ),
            child: Center(child: customTextBold(title: widget.isvalue ? btnlistforheight[index] : btnlistforWeight[index] , fontWeight: FontWeight.w500, fontSize: 15.h,color: selectedtab == index ? AppColors.white : AppColors.black)),
            ),
         ),
       );
        },
      ),
    );
  }
}