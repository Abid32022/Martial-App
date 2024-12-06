import 'package:flutter/material.dart';
import '../../widgets/drawer.dart';
import '../../widgets/appbar_without_tabs.dart';
import 'components/transaction_card.dart';

class Transactions extends StatefulWidget {
  const Transactions({super.key});

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> with SingleTickerProviderStateMixin {
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
       'Transactions',
      // if there are Two tabs then make it true
    ), 
    ),
    drawer: customDrawer(context),
    body: SingleChildScrollView(
      child: Column(
        children: [
          TransactionCard(),
        ],
      ),
    ),
    );
  }
}