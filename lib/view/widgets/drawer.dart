
import 'package:ev_martial/view/screens/academy/academy.dart';
import 'package:ev_martial/view/screens/booking/booking.dart';
import 'package:ev_martial/view/screens/explore/explore.dart';
import 'package:ev_martial/view/screens/payment%20method/payment_method.dart';
import 'package:ev_martial/view/screens/settings%20and%20permissions/settings.dart';
import 'package:ev_martial/view/screens/subscription/subscription.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_constant.dart';
import '../screens/membership details/membership_detail.dart';
import '../screens/scan qr code/scan_qr_code.dart';
import '../screens/transactions/transactions.dart';
import '../screens/waiver/waiver.dart';
import 'custom_text.dart';
import '../screens/classes/classes.dart';


Widget customDrawer(BuildContext context) {
  List<String> tabs = [
  'Explore ',
  'Academy',
  'Membership',
  'Classes',
  'Bookings',
  'Subscription ',
  'Transactions',
  'Ranks',
  'Waiver',
  'QR Code',
  'Payment Method',
  'Setting & Permission',
  ];
  return Drawer(
      backgroundColor: AppColors.drawercolor,
      clipBehavior: Clip.none,
      elevation: 0,
      width: MediaQuery.of(context).size.width * 0.6,
      child: Builder(
       builder: (BuildContext builderContext) { 
      return Container(
        child: Column(
          children: [
          Container(
            height: 180.h,
            width: double.infinity,
            color: AppColors.primaryblueColor.withOpacity(0.4),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 SizedBox(height: 40.h,),
                CircleAvatar(
                  backgroundImage: const AssetImage(AppConstant.profile),
                  backgroundColor: Colors.transparent,
                  maxRadius: 30.h,
                ),
                SizedBox(height: 13.h,),
                customTextBold(title: "Adnan Qureshi", fontWeight: FontWeight.w500, fontSize: 18.h,color: AppColors.white,),
                SizedBox(height: 8.h,),
                customTextRegular(title: '+1 (917) 470-9281',fontWeight: FontWeight.w400, fontSize: 14.h,color: AppColors.white),
                ],
              ),
            ),
          ),
          SizedBox(height: 15.h,),
           Expanded(
             child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 19),
               child: SingleChildScrollView(
                 child: Column(
                   children: [
                     ListView.builder(
                            clipBehavior: Clip.none,
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: tabs.length,
                            itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: (){
                              switch (index) {
                              case 0:
                                Get.to(() => Explore());
                                break;
                              case 1:
                                Get.to(() => const Academy());
                                break;
                              case 2:
                               Get.to(() => MemberShipDetail());
                                break;
                              case 3:
                                Get.to(() => const Classes());
                                break;
                               case 4:
                                Get.to(() => const Booking());
                                break;
                              case 5:
                                Get.to(() => const Subscription());
                                break;
                              case 6:
                                Get.to(() => const Transactions());
                                break;
                              case 7:
                                // Get.to(() => const Transactions());
                                break;
                              case 8:
                                Get.to(() => const Waiver());
                                break;
                              case 9:
                                Get.to(() => const ScanQRCode());
                                break;
                              case 10:
                                Get.to(() => const PaymentMethod());
                                break;
                              case 11:
                                Get.to(() =>  Settings());
                                break;
                              // Add more cases for other items as needed
                              default:
                                // Handle default case (if any)
                            }
                              },
                              child: SizedBox(
                                height: 45.h,
                                width: double.infinity,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                   customTextRegular(title: tabs[index],fontWeight: FontWeight.w400, fontSize: 16.h,color: AppColors.white),
                                  ],
                                ),
                              ),
                            );
                            },
                          ),
                   ],
                 ),
               ),
             ),
           ),
           SizedBox(height: 20.h,),
          Container(
                 height: 50.h,
                 width: double.infinity,
                 color: AppColors.primaryblueColor.withOpacity(0.4),
                 child: Center(
                   child: customTextRegular(title: 'LOGOUT',fontWeight: FontWeight.w500, fontSize: 17.h,color: AppColors.white),
                 ),
                ),
                SizedBox(height: 10.h,),
          ]
        ),
      );
       }
       )
    ); 
}
// var drawer = 