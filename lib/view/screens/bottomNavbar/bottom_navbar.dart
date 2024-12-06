import 'package:ev_martial/utils/app_colors.dart';
import 'package:ev_martial/utils/app_constant.dart';
import 'package:ev_martial/view/screens/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../widgets/drawer.dart';
import '../dashboard/components/dashboard_appbar.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  List<String> navbaritems = [
    AppConstant.bottomnavbar1,
    AppConstant.bottomnavbar2,
    AppConstant.bottomnavbar3,
    AppConstant.bottomnavbar4,
    AppConstant.bottomnavbar5,
    AppConstant.bottomnavbar6,
  ];
 
  int selectedtab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    key: _scaffoldKey,  
    appBar: PreferredSize(
       preferredSize: Size(MediaQuery.of(context).size.width,100),
      child: dashboardcustomAppbar(
      context,
      (){
        _scaffoldKey.currentState!.openDrawer();
      }
    ), 
    ),
    drawer: customDrawer(context),
      bottomNavigationBar: Container(
        color: AppColors.white,
        height: 70.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          SizedBox(
            height: 42.h,
            child: ListView.builder(
              itemCount: navbaritems.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              clipBehavior: Clip.none,
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
              return InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: (){
                  setState(() {
                     selectedtab = index;
                  });
                },
                child: SizedBox(
                width: MediaQuery.of(context).size.width / 6, 
                child: Column(
                children: [
                  Container(
                  decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: selectedtab == index ? AppColors.lightbluecolor : Colors.transparent,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 6.w,vertical: 6.h),
                  // ignore: deprecated_member_use
                  child: Center(child: SvgPicture.asset(navbaritems[index],height: 25.h,color: selectedtab == index ? AppColors.primaryblueColor : AppColors.black,))),
                  ],
                )
                ),
              );
              },
            ),
          ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            if(selectedtab == 0) const DashBoard(),
            if(selectedtab == 1) const DashBoard(),
            if(selectedtab == 2) const DashBoard(),
            if(selectedtab == 3) const DashBoard(),
            if(selectedtab == 4) const DashBoard(),
            if(selectedtab == 5) const DashBoard(),
          ],
          ),
      )
    );
  }
}


