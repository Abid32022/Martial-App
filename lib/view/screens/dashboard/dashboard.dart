
// ignore_for_file: must_be_immutable
import 'package:ev_martial/view/screens/dashboard/components/measurements.dart';
import 'package:ev_martial/view/screens/dashboard/components/upcomming_booking.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/animated_fade_child.dart';
import 'components/membership_and_attandence.dart';
import 'components/ranks.dart';
import 'components/videos.dart';
import 'components/wellcome.dart';

class DashBoard extends StatelessWidget {
   const DashBoard({super.key});
  

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 19),
        child: Column(
          children: [
          SizedBox(height: 10.h,),
           animatedFadechild(
            child: WellComeSec(),
             animationDuration: 1200,
             delayStart: 100,
            ),
            SizedBox(height: 15.h,),
             animatedFadechild(
              child: MemberShipAndAttendence(),
              animationDuration: 1200,
              delayStart: 300,
              ),
              SizedBox(height: 15.h,),
              animatedFadechild(
              animationDuration: 1200,
              delayStart: 500,
              child: const Ranks()),
              SizedBox(height: 15.h,),
              animatedFadechild(
              child: Measurements(),
              animationDuration: 1200,
              delayStart: 700,
              ),
              SizedBox(height: 15.h,),
              animatedFadechild(
              child: const UpcommingBooking(),
              animationDuration: 1200,
              delayStart: 900,
              ),
              SizedBox(height: 15.h,),
              animatedFadechild(
              child: const Vedios(),
              animationDuration: 1200,
              delayStart: 1100,
              ),
              SizedBox(height: 20.h,),
          ],
        ),
      ),
    );
  }
}