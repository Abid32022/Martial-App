import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../utils/app_colors.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/drawer.dart';
import '../../widgets/appbar_without_tabs.dart';
import 'components/add_card.dart';
import 'components/payment_card.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> with SingleTickerProviderStateMixin {
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
       'Payment Method',
    ), 
    ),
     bottomNavigationBar: Container(
        height: 80.h,
        padding: EdgeInsets.symmetric(horizontal: 20.w,),
        color: AppColors.Background,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             customButton(
              fontColor: AppColors.primaryblueColor,
              colors: AppColors.Secondary,
                text: "Add new card",
                borderRadius: 8.87.r,
                 ontap:(){
                 addNewCard(context);
                  }
              ),
          ],
        ),
      ),
    drawer: customDrawer(context),
      body: Column(
        children: [
         PaymentCard()
        ],
      ),
    );
  }
}