import 'package:ev_martial/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../utils/app_colors.dart';
import '../../widgets/appbar_without_tabs.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/drawer.dart';

class ScanQRCode extends StatefulWidget {
 const ScanQRCode({super.key});

  @override
  State<ScanQRCode> createState() => _ScanQRCodeState();
}
class _ScanQRCodeState extends State<ScanQRCode> {
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
       'QR Code',  
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
              fontColor: AppColors.black,
              colors: AppColors.Secondary,
                text: "Place Camera Code",
                borderRadius: 8.87.r,
                 ontap:(){
                  }
              ),
          ],
        ),
      ),
    drawer: customDrawer(context,),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19),
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  border: Border(top: BorderSide(width: 1.5,color: AppColors.LightBorder),bottom: BorderSide(width: 1.5,color: AppColors.LightBorder))
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  child: Column(
                    children: [
                      customTextBold(title: "Scan QR code", fontWeight: FontWeight.w500, fontSize: 22.h,color: AppColors.black),
                      SizedBox(height: 10.h,),
                      customTextBold(textAlign: TextAlign.center,title: "Position the QR code within the frame for a quick and stable scan, minimizing any unnecessary movement for faster results.", fontWeight: FontWeight.w400, fontSize: 15.h,color: AppColors.darkgrey),
                    ],
                   ),
                ),
              ),
               SizedBox(height: 100.h,),
               Container(
                padding: EdgeInsets.symmetric(horizontal: 40.w,vertical: 40.h),
                 decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(width: 1.5,color: AppColors.LightBorder)
                ),
                child: Image.asset(AppConstant.qrcode,height: 160.h,),
               )
            ],
          ),
        )
    );
  }
  
}




        