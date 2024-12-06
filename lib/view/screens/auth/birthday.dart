import 'package:ev_martial/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../utils/app_constant.dart';
import '../../widgets/custom_text.dart';

class Birthday extends StatefulWidget {
  const Birthday({super.key});

  @override
  State<Birthday> createState() => _BirthdayState();
}

class _BirthdayState extends State<Birthday> {
  DateTime _selectedDate = DateTime.now();

  void _showDatePicker() async {
    DateTime? newSelectedDate = await showRoundedDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
      borderRadius: 16,
      height: MediaQuery.of(context).size.height * 0.4,
      background: Colors.white.withOpacity(0.5),
    );

    if (newSelectedDate != null) {
      setState(() {
        _selectedDate = newSelectedDate;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
  String formattedDate = "${_selectedDate.month}/${_selectedDate.day}/${_selectedDate.year}";
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 40.h,),
          Center(child: Image.asset(AppConstant.icloginlogoBlueOne,height: 112.h,width: 187.w,)),
          SizedBox(height: 36.h,),
          customTextBold(title: "What is your birhtday", fontWeight: FontWeight.w500, fontSize: 22.h),
          SizedBox(height: 5.h,),
          Center(child: customTextBold(title: "Lets  us to find the best  plan for you", fontWeight: FontWeight.w400, fontSize: 15.h,textAlign: TextAlign.center)),
          SizedBox(height: 36.h,),
         GestureDetector(
          onTap: _showDatePicker,
           child: Container(
             height: 48.h,
             width: double.infinity,
             decoration: BoxDecoration(
             color:  Colors.transparent,
             border: Border.all(color: AppColors.LightBorder),
             borderRadius: BorderRadius.circular(8)
             ),
             child: Center(child:Center(child: customTextBold(title: formattedDate, fontWeight: FontWeight.w400, fontSize: 16.h,color: AppColors.black )),
             ),
              ),
         ),
        ],
      ),
    );
  }
}