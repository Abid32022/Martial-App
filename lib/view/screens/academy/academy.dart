import 'package:ev_martial/view/widgets/appbar.dart';
import 'package:ev_martial/view/screens/academy/components/schools.dart';
import 'package:flutter/material.dart';
import '../../widgets/drawer.dart';

class Academy extends StatefulWidget {
   const Academy({super.key});

  @override
  State<Academy> createState() => _AcademyState();
}

class _AcademyState extends State<Academy> with SingleTickerProviderStateMixin {
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
      'Schools',
      'Academies',
      'Studios',
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
       'Academy',
        // if there are Two tabs then make it true
       false,
       // tab padding
       defaulttabpadding: 27
    ), 
    ),
    drawer: customDrawer(context),  
      body: SizedBox(
        child: TabBarView(
          clipBehavior: Clip.none,
          physics: const NeverScrollableScrollPhysics(),
          controller: _tabController,
          children: const [
          SchoolsTabView(),
          SchoolsTabView(),
          SchoolsTabView(),
          ]
          )
      ),
    );
  }
}