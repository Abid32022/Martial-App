import 'package:ev_martial/view/screens/explore/components/schools.dart';
import 'package:ev_martial/view/screens/explore/components/search_field.dart';
import 'package:ev_martial/view/screens/explore/components/top_memberships.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/drawer.dart';
import 'components/activities.dart';
import 'components/appbar.dart';

class Explore extends StatelessWidget {
   Explore({super.key});
   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     key: _scaffoldKey,  
      appBar: PreferredSize(
       preferredSize: Size(MediaQuery.of(context).size.width,100),
      child: explorecustomAppbar(
      context,
      (){
        _scaffoldKey.currentState!.openDrawer();
      }
    ), 
    ),
    drawer: customDrawer(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 19),
        child: Column(
          children: [
          SizedBox(height: 30.h,),
          const SearchField(),
          SizedBox(height: 30.h,),
          const Activities(),
          SizedBox(height: 25.h,),
          Schools(),
          SizedBox(height: 25.h,),
          TopMemberShips()
          ],
        ),
      ),
    );
  }
}