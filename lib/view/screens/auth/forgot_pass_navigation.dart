import 'package:ev_martial/view/screens/auth/otp_screen.dart';
import 'package:ev_martial/view/screens/auth/reset_pass.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_constant.dart';
import 'forgot_passward.dart';


class ForgotPasswardNavigation extends StatefulWidget {
  const ForgotPasswardNavigation ({super.key});

  @override
  State<ForgotPasswardNavigation> createState() => _ForgotPasswardNavigationState();
}

class _ForgotPasswardNavigationState extends State<ForgotPasswardNavigation> {
  // ignore: prefer_final_fields
  PageController _pageController = PageController(initialPage: 0);
  // ignore: unused_field
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SizedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 19),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 45.h,),
               Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                  Expanded(child: SizedBox(child: Row(
                    children: [
                      GestureDetector(
                       onTap: _currentPage == 0 ? (){Get.back();} : () => _pageController.previousPage(
                       duration: const Duration(milliseconds: 300),
                       curve: Curves.linear,
                       ),
                      child: SvgPicture.asset(AppConstant.icback)),
                    ],
                  ))),
                    Expanded(
                      child: SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SmoothPageIndicator(  
                              controller: _pageController,
                              count: 3, 
                              effect: WormEffect(
                                spacing: 12.w,
                                dotHeight: 4.h,
                                dotWidth: 26.w,
                                activeDotColor: AppColors.primaryblueColor,
                                dotColor: AppColors.LightBorder,
                              ), 
                              onDotClicked: (index){  
                              }  
                            ),
                          ],
                        ),
                      ),
                    ),
                   const Expanded(child: SizedBox()),
                      ],
                    ),
              SizedBox(
                height: 600.h,
                child: PageView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                   onPageChanged: (int index) {
                     setState(() {
                    _currentPage = index;
                  });
                  },
                  controller: _pageController,
                  clipBehavior: Clip.none,
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, int index){
                   if (index == 0) {
                     return ForgotPassward(
                     onTap:() => _pageController.nextPage(
                     duration: const Duration(milliseconds: 300),
                     curve: Curves.linear,
                     ),
                     );
                   } else if (index == 1) {
                     return OtpScreen(
                    onTap:() => _pageController.nextPage(
                     duration: const Duration(milliseconds: 300),
                     curve: Curves.linear,
                     ),
                     );
                   } else if (index == 2) {
                     return const ResetPassward();
                   }
                    return const SizedBox.shrink();
                  }
                  ),
              ),
            ],
          ),
        ),
      ),
    ),
    );
  }
}