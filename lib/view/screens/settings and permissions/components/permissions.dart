import 'package:ev_martial/view/widgets/custom_switch.dart';
import 'package:flutter/material.dart';
import 'package:ev_martial/utils/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../widgets/custom_text.dart';


// ignore: must_be_immutable
class Permissions extends StatelessWidget {
   Permissions({super.key});
List<String> list = [
  'Device Location',
  'Push Notification',
  'Email Notifitcation',
  'Phone Contacts',
  'Google Calendar',
  'Device Storage',
  'Camera & Media Library',
];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         customTextBold(title: 'Permissions', fontWeight: FontWeight.w500, fontSize: 16.h,color: AppColors.darkgrey),
         SizedBox(height: 10.h,),
          Container(
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(8),
             border: Border.all(color: AppColors.LightBorder,width: 1.5)
           ),
           child: Column(
             children: [
               ...List.generate(list.length, (index) => Column(
                 children: [
                   InkWell(
                     splashColor: Colors.transparent,
                     highlightColor: Colors.transparent,
                     onTap: (){},
                     child: Container(
                       decoration: BoxDecoration(
                       border: Border(top: BorderSide(color: index == 0 ? Colors.transparent : AppColors.LightBorder,width: 1.5))
                     ), 
                       padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 10.2),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           customTextBold(title: list[index], fontWeight: FontWeight.w400, fontSize: 15.h,color: AppColors.black),
                           CustomSwitch(isSwitched: false)
                         ],
                       ),
                     ),
                   ),
                 ],
               ),
               )
              
               
             ],
           ),
           )
      ],
    );
  }
}