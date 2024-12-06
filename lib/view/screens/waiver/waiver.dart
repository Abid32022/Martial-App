import 'package:flutter/material.dart';

import '../../widgets/appbar.dart';
import '../../widgets/drawer.dart';
import 'components/active.dart';

class Waiver extends StatefulWidget {
  const Waiver({super.key});

  @override
  State<Waiver> createState() => _WaiverState();
}

class _WaiverState extends State<Waiver> with SingleTickerProviderStateMixin {
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
      'Active',
      'Pending',
      'Expire',
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
       'Waiver ',
      // if there are Two tabs then make it true
       false,
      // tab padding
       defaulttabpadding: 32
    ), 
    ),
    drawer: customDrawer(context),
    body: SizedBox(
        child: TabBarView(
          clipBehavior: Clip.none,
          physics: const NeverScrollableScrollPhysics(),
          controller: _tabController,
          children: [
           WaiverActive(),
           WaiverActive(),
           WaiverActive(),
          ]
          )
      ),
    );
  }
}