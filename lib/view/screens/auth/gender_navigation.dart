import 'package:ev_martial/utils/app_colors.dart';
import 'package:ev_martial/view/screens/auth/birthday.dart';
import 'package:ev_martial/view/screens/auth/body_type.dart';
import 'package:ev_martial/view/screens/auth/widgets/custom_stepper_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../utils/app_constant.dart';
import '../../widgets/custom_button.dart';
import '../bottomNavbar/bottom_navbar.dart';
import 'activity_goals.dart';
import 'gender_screen.dart';

class GenderNavigation extends StatefulWidget {
  const GenderNavigation({super.key});

  @override
  State<GenderNavigation> createState() => _GenderNavigationState();
}

class _GenderNavigationState extends State<GenderNavigation> {
  int currentindex = 0;
  final controller = PageController(initialPage: 0);

  @override
  void dispose() {
    // ignore: todo
    // TODO: implement dispose
    super.dispose();
  }
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19),
          child: Column(
            children: [
              SizedBox(height: 50.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 currentindex == 0 ? Expanded(child: SizedBox(height: 30.h)) : Expanded(
                   child: Row(
                     children: [
                       GestureDetector(
                            onTap: () => controller.previousPage(
                             duration: const Duration(milliseconds: 300),
                             curve: Curves.linear,
                             ),
                          // ignore: deprecated_member_use
                          child: SvgPicture.asset(AppConstant.icback,color: Colors.black,height: 30,)),
                     ],
                   ),
                 ),
                    SizedBox(
                      width: 180.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ...List.generate(
                        4,
                        (i) => CustomStepper(
                         isactive: currentindex >= i ? true : false,
                        )),
                        ],
                      ),
                    ),
                  const Expanded(child: SizedBox())
                ],
              ),
                Expanded(
                  child: SizedBox(
                    height: 600.h,
                    child: PageView(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: controller,
                    onPageChanged: (value) {
                      setState(() {
                        currentindex = value;
                      });
                    },
                      children: [
                        Gender(),
                        ActivityGoals(),
                        const Birthday(),
                        BodyType(),
                      ],
                      ),
                  ),
                ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 135,
        padding: EdgeInsets.symmetric(horizontal: 20.w,),
        color: AppColors.Background,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             customButton(
              colors: AppColors.skipbtncolor,
                text: "SKIP",
                borderRadius: 8.87, 
              ontap: (){
                Get.to(()=> const BottomNavBar());
              }
              ),
              SizedBox(height: 10.h,),
               customButton(
              colors: AppColors.Secondary,
                text: "NEXT",
                borderRadius: 8.87,
                 ontap:(){
                  currentindex == 3 ? Get.to(()=> const BottomNavBar()) : controller.nextPage(
                    duration: const Duration(milliseconds: 300),
                     curve: Curves.linear,
                     );
                   }
              ),
          ],
        ),
      ),
    );
  }
}



