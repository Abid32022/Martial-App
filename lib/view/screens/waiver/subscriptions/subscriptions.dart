import 'package:ev_martial/utils/app_colors.dart';
import 'package:ev_martial/view/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';
import '../../../../models/dash_board_wellcome_sec_model.dart';
import '../../../../utils/app_constant.dart';
import '../../../widgets/appbar_without_tabs.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_text.dart';
import '../../../widgets/custom_textfield.dart';
import 'dart:ui' as ui;

// ignore: must_be_immutable
class WaiverSubscriptions extends StatefulWidget {
   const WaiverSubscriptions({super.key});

  @override
  State<WaiverSubscriptions> createState() => _WaiverSubscriptionsState();
}

class _WaiverSubscriptionsState extends State<WaiverSubscriptions> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  List<DashBoardWellcomeSecModel> texts = [
    DashBoardWellcomeSecModel('1', 'Our staff, agents and subcontractors are not medically trained and should you have any concerns with your health and fitness you should seek independent medical advice before engaging in any physical activity on our premises.'),
    DashBoardWellcomeSecModel('2', 'To the best of your knowledge and belief you are in good health and not knowingly incapable of engaging in either active or passive exercise and that such exercise would not be detrimental to your health, safety, comfort, well being or physical condition. Further, that you will advise us immediately should your health or vulnerability to injury change.'),
    DashBoardWellcomeSecModel('3', 'If you have any pre-existing medical conditions, you may be pregnant or you are breastfeeding, you have consulted your medical professional or general practitioner AND informed our team before beginning to use our facilities and services.'),
    DashBoardWellcomeSecModel('4', 'If you have a pre-existing medical condition which will benefit from regular exercise, your GP has signed this off and recorded this on your medical records.'),
    DashBoardWellcomeSecModel('5', 'You have read and understood this agreement and all of its Terms and Conditions before accepting them below.'),
  ];

  final GlobalKey<SfSignaturePadState> signatureGlobalKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  void _handleClearButtonPressed() {
    signatureGlobalKey.currentState!.clear();
  }

  void _handleSaveButtonPressed() async {
    final data =
        await signatureGlobalKey.currentState!.toImage(pixelRatio: 3.0);
    final bytes = await data.toByteData(format: ui.ImageByteFormat.png);
    // ignore: use_build_context_synchronously
    await 
      Get.to(() =>
           Scaffold(
            appBar: AppBar(
              leading: Padding(
                padding: EdgeInsets.only(left: 19,top: 11.h,bottom: 11.h),
                child: GestureDetector(
                  onTap: (){
                    Get.back();
                  },
                child: SvgPicture.asset(AppConstant.icback,height: 15.h,)),
              ),
            backgroundColor: AppColors.Background,
            elevation: 0,
            ),
            body: Center(
              child: Container(
                color: Colors.grey[300],
                child: Image.memory(bytes!.buffer.asUint8List()),
              ),
            ),
      )
    );
  }

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
       'Subscription',  
    ), 
    ),
    drawer: customDrawer(context,),
      body: SingleChildScrollView(
        child: Column(
          children: [
           Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 19,vertical: 10.h),
            decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(width: 1.5,color: AppColors.LightBorder),top: BorderSide(width: 1.5,color: AppColors.LightBorder))
            ),
            child: Column(
              children: [
                customTextBold(title: "👋", fontWeight: FontWeight.w500, fontSize: 50.h,),
                SizedBox(height: 10.h,),
                customTextBold(title: "Brighton Marina Jiu Jitsu Academy", fontWeight: FontWeight.w500, fontSize: 18.h,color: AppColors.primaryblueColor),
                customTextBold(title: "Hi Rana Awais Brighton Marina Jiu Jitsu Academy has invited you to sign the following waiver.", fontWeight: FontWeight.w400, fontSize: 16.h,color: AppColors.black,textAlign: TextAlign.center),
              ],
            ),
           ),
            SizedBox(height: 20.h,),
           Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 19,vertical: 10.h),
            decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(width: 1.5,color: AppColors.LightBorder),top: BorderSide(width: 1.5,color: AppColors.LightBorder))
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customTextBold(title: "Brighton Marina Jiu Jitsu Waiver", fontWeight: FontWeight.w500, fontSize: 18.h,color: AppColors.black),
                SizedBox(height: 8.h,),
                customTextBold(title: "The information given by you in entering this agreement is correct and will be relied upon by us.", fontWeight: FontWeight.w500, fontSize: 14.h,color: AppColors.black),
                ...List.generate(
                  texts.length, (index) => Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        customTextBold(title: texts[index].icon, fontWeight: FontWeight.w500, fontSize: 14.h,color: AppColors.black),
                        SizedBox(width: 2.w,),
                        Icon(Icons.brightness_1_rounded, size: 3.h),
                      ],
                    ),
                    SizedBox(width: 4.w,),
                    Expanded(child: customTextBold(title: texts[index].text, fontWeight: FontWeight.w500, fontSize: 14.h,color: AppColors.black)),
                  ],
                )),
                customTextBold(title: "This agreement will become binding upon both parties once you have checked the \"I confirm that I have read and agree to Brighton Marina Jiu Jitsu Academy Health Agreement\" box and your membership is confirmed. \nI understand that whilst every care will be taken to give safe instruction, I accept full responsibility and consider myself fit to exercise. I have answered all questions correctly and all medical and health considerations are noted above.", fontWeight: FontWeight.w400, fontSize: 14.h,color: AppColors.black),
                customTextBold(title: "PLEASE NOTE IT IS YOUR RESPONSIBILITY TO INFORM YOUR INDIVIDUAL INSTRUCTOR OF ANY MEDICAL CONDITION THAT MAY AFFECT YOUR HEALTH WHILST UNDER THEIR INSTRUCTION AS THE INFORMATION DECLARED ON THIS FORM IS NOT PASSED ON TO ANYONE.", fontWeight: FontWeight.w400, fontSize: 14.h,color: AppColors.black),
                SizedBox(height: 20.h,),
                customTextBold(title: "COVID-19 Liabillity Waiver", fontWeight: FontWeight.w500, fontSize: 18.h,color: AppColors.black),
                SizedBox(height: 5.h,),
                customTextBold(title: "UPDATED: 10.01.2023", fontWeight: FontWeight.w400, fontSize: 14.h,color: AppColors.black),
                customTextBold(title: "The General Data Protection Regulation, known as GDPR, is a positive step towards you having more control over how your data is used and how you’re contacted. The changes will also help to better protect your personal data.", fontWeight: FontWeight.w500, fontSize: 14.h,color: AppColors.black),
              ],
            ),
           ),
           SizedBox(height: 20.h,),
           Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 19,vertical: 10.h),
            decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(width: 1.5,color: AppColors.LightBorder),top: BorderSide(width: 1.5,color: AppColors.LightBorder))
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customTextBold(title: "Signed Waiver", fontWeight: FontWeight.w500, fontSize: 18.h,color: AppColors.black),
                SizedBox(height: 10.h,),
                customTextBold(title: "Full Name",fontSize: 15.h,fontWeight: FontWeight.w500),
                 SizedBox(height: 8.h,),
                 customTextField(
                // bordercolor: Colors.red,
                prefixImage: Padding(
                  padding: const EdgeInsets.all(14),
                  child: SvgPicture.asset(AppConstant.icusername,height: 15.h,width: 11.w,),
                  // SvgPicture.asset('assets/icons/ic_password.svg',height: 15.h,width: 11.w,),
                ),
                  hintText: "Your Name",
              ),
              SizedBox(height: 20.h,),
              customTextBold(title: "Signature:",fontSize: 15.h,fontWeight: FontWeight.w500),
              SizedBox(height: 8.h,),
              Container(
                height: 250.h,
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.LightBorder,width: 1.5),
                      borderRadius: BorderRadius.circular(8)
                      ),
                      child: Center(
                        child: SizedBox(
                          height: 240.h,
                          width: double.infinity,
                          child: SfSignaturePad(
                          key: signatureGlobalKey,
                          backgroundColor: AppColors.white,
                          strokeColor: AppColors.primaryblueColor,
                          minimumStrokeWidth: 2.0,
                          maximumStrokeWidth: 4.0,
                          ),
                        ),
                  )
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
                      TextButton(
                        onPressed: _handleSaveButtonPressed,
                        child: customTextBold(title: "See Your Signature", fontWeight: FontWeight.w500, fontSize: 15.h,color: AppColors.primaryblueColor),
                      ),
                      TextButton(
                        onPressed: _handleClearButtonPressed,
                        child: customTextBold(title: "Clear Field", fontWeight: FontWeight.w500, fontSize: 15.h,color: AppColors.primaryblueColor),
                      )
                    ])
                  ],
            )
           ),
           SizedBox(height: 20.h,),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 19),
             child: customButton(
                  colors: AppColors.Secondary,
                  text: "Submit",
                  borderRadius: 8.87,
                  ontap: (){
                  }
                ),
           ),
           SizedBox(height: 20.h,),
          ],
        ),
      ),
    );
  }
}