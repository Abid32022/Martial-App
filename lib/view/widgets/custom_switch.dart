import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_colors.dart';


// ignore: must_be_immutable
class CustomSwitch extends StatefulWidget {
   bool isSwitched;
   CustomSwitch({super.key, required this.isSwitched});

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
           height: 20.h,width: 44.w,
           child: Switch(
              value: widget.isSwitched,
                 onChanged: (value) {
                setState(() {
               widget.isSwitched = value;
             });
            },
            activeTrackColor: AppColors.Gray,
            activeColor: AppColors.primaryblueColor,
            inactiveThumbColor: AppColors.Gray,
            inactiveTrackColor: AppColors.primaryblueColor,
             ),
           );
  }
}