import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../utils/app_colors.dart';

// ignore: must_be_immutable
class CustomCheckBox extends StatefulWidget {
  bool isChecked;
  bool istap = true;
  bool iscircle = false;
   CustomCheckBox({super.key, required this.isChecked,this.istap = true,this.iscircle = false});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  // bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.istap ? (){
        setState(() {
          widget.isChecked =! widget.isChecked;
        });
      } : (){},
      child: Container(
        padding: const EdgeInsets.all(4),
        height: 17.73.h,
        width: 17.73.h,
        decoration: widget.iscircle ? BoxDecoration(
        border: Border.all(color: widget.isChecked ? Colors.transparent : AppColors.LightBorder ,width: 1.5),
        color: widget.isChecked ? AppColors.primaryblueColor : Colors.transparent,
        shape: BoxShape.circle
        ) : BoxDecoration(
        border: Border.all(color: widget.isChecked ? Colors.transparent : AppColors.LightBorder ,width: 1.5),
        color: widget.isChecked ? AppColors.primaryblueColor : Colors.transparent,
        borderRadius: BorderRadius.circular(4)
        ),
        child: widget.isChecked? SvgPicture.asset('assets/icons/tick.svg',):const SizedBox(),
      ),
    );
  }
}
