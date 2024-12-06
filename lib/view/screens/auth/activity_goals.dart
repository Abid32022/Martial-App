import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_constant.dart';
import '../../widgets/custom_text.dart';

// ignore: must_be_immutable
class ActivityGoals extends StatelessWidget {
   ActivityGoals({super.key});
   List<String> goals = [
    'Jiu Jitsu',
    'Jiu Jitsu',
    'Karate',
    'Karate',
    'Judo',
    'Judo',
    'Krav Maga',
    'Krav Maga',
    'Taekwondo',
    'Taekwondo',
   ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 40.h,),
          Center(child: Image.asset(AppConstant.icloginlogoBlueOne,height: 112.h,width: 187.w,)),
         SizedBox(height: 36.h,),
          customTextBold(title: "What are your training goals", fontWeight: FontWeight.w500, fontSize: 22.h),
           SizedBox(height: 5.h,),
          Center(child: customTextBold(title: "Lets  us to find the best  plan for you", fontWeight: FontWeight.w400, fontSize: 15.h,textAlign: TextAlign.center)),
          SizedBox(height: 36.h,),
         GridView.builder(
          padding: EdgeInsets.zero,
          clipBehavior: Clip.none,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
           mainAxisExtent: 47.h,
           crossAxisCount: 2,
           crossAxisSpacing: 10,
           mainAxisSpacing: 10,
           ),
           itemCount: goals.length,
           itemBuilder: (BuildContext context, int index) {
             return GoalsBtn(
             text: goals[index],
             );
           },
         ),
        ],
      ),
    );
  }
}


// ignore: must_be_immutable
class GoalsBtn extends StatefulWidget {
  String text;
   GoalsBtn({super.key,required this.text});

  @override
  State<GoalsBtn> createState() => _GoalsBtnState();
}

class _GoalsBtnState extends State<GoalsBtn> {
  bool selectedindex = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
                          onTap: (){
                           setState(() {
                             selectedindex = !selectedindex;
                           });
                          },
                          child: Container(
                            height: 52.h,
                            width: Get.width,
                            decoration: BoxDecoration(
                              color: selectedindex ? AppColors.primaryblueColor: Colors.transparent,
                                border: Border.all(color: AppColors.LightBorder),
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: Center(child:Center(child: customTextBold(title: widget.text, fontWeight: FontWeight.w400, fontSize: 16.h,color: selectedindex ? AppColors.white : AppColors.black )),
                            ),
                          ),
                        );
  }
}