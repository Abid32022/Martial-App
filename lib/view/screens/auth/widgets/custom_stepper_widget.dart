import 'package:flutter/material.dart';
import '../../../../utils/app_colors.dart';

// ignore: must_be_immutable
class CustomStepper extends StatelessWidget {
  bool isactive;
 CustomStepper({super.key,required this.isactive});

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: isactive ? AppColors.primaryblueColor
            : AppColors.darkgrey.withOpacity(0.2),
          ),
          height: 4,
          width: 32,
        );
  }
}