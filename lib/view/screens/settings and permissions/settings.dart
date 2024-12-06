import 'package:ev_martial/view/screens/settings%20and%20permissions/components/laws_and_regulations.dart';
import 'package:ev_martial/view/screens/settings%20and%20permissions/components/permissions.dart';
import 'package:ev_martial/view/screens/settings%20and%20permissions/components/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/appbar_without_tabs.dart';
import '../../widgets/drawer.dart';
import 'components/regional.dart';

class Settings extends StatelessWidget {
   Settings({super.key});
final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
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
       'Setting',
    ), 
    ),
     drawer: customDrawer(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
           SettingsProfileComponent(),
           SizedBox(height: 20.h,),
           Padding(
             padding: EdgeInsets.symmetric(horizontal: 19.w),
             child: Column(
               children: [
                 Permissions(),
                 SizedBox(height: 20.h,),
                 Regional(),
                 SizedBox(height: 20.h,),
                 LawsAndRegulations()
               ],
             ),
           )
          ],
        ),
      ),
    );
  }
}