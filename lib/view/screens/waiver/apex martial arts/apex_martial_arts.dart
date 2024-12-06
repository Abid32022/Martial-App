import 'package:ev_martial/view/screens/waiver/apex%20martial%20arts/components/signed.dart';
import 'package:flutter/material.dart';
import '../../../widgets/appbar.dart';
import '../../../widgets/drawer.dart';

class ApexMartialArts extends StatefulWidget {
   const ApexMartialArts({super.key});

  @override
  State<ApexMartialArts> createState() => _ApexMartialArtsState();
}

class _ApexMartialArtsState extends State<ApexMartialArts> with SingleTickerProviderStateMixin {
 final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

TabController? _tabController;

bool isKidsTabSelected = true;

  @override
  void initState() {
    _tabController = TabController(
      initialIndex: 0,
      length: 2,
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
      'Signed',
      'Unsigned',
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
       'Apex Martial Arts  ',
      // if there are Two tabs then make it true
      true
    ), 
    ),
      drawer: customDrawer(context),
      key: _scaffoldKey,
      body: SizedBox(
        child: TabBarView(
          clipBehavior: Clip.none,
          physics: const NeverScrollableScrollPhysics(),
          controller: _tabController,
          children: [
           Signed(),
           Signed(),
          ]
          )
      ),
    );
  }
}