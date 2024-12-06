
import 'package:ev_martial/view/screens/booking/components/upcoming.dart';
import 'package:flutter/material.dart';

import '../../widgets/appbar.dart';
import '../../widgets/drawer.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> with SingleTickerProviderStateMixin {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
TabController? _tabController;
    @override
  void initState() {
    _tabController = TabController(
      initialIndex: 0,
      length: 3,
      vsync: this,
    );
    super.initState();
  }
    @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }
     var tabs = [
      'Upcoming',
      'Completed',
      'Cancelled',
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       key: _scaffoldKey,
      appBar: PreferredSize(
       preferredSize: Size(MediaQuery.of(context).size.width,100),
      child: appbar(
      context,
      // Function
      (){
        _scaffoldKey.currentState!.openDrawer();
      },
      // Tabcontroller
      _tabController!,
      // Tabs
       tabs,
      // Title
       'Booking',
      // if there are Two tabs then make it true
       false
    ), 
    ),
    drawer: customDrawer(context),
       body: SizedBox(
        child: TabBarView(
          clipBehavior: Clip.none,
          physics: const NeverScrollableScrollPhysics(),
          controller: _tabController,
          children: [
          UpComing(),
          UpComing(),
          UpComing(),
          ]
          )
      ),
    );
  }
}