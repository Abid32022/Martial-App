import 'package:ev_martial/utils/app_colors.dart';
import 'package:ev_martial/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../models/dash_board_wellcome_sec_model.dart';
import '../../widgets/appbar_without_tabs.dart';
import '../../widgets/drawer.dart';

// ignore: must_be_immutable
class TermsAndConditions extends StatelessWidget {
   TermsAndConditions({super.key});
final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  List<DashBoardWellcomeSecModel> text = [
    DashBoardWellcomeSecModel('Affiliate ', 'means an entity that controls, is controlled by, or is under common control with a party, where "control" means ownership of 50% or more of the shares, equity interest, or other securities entitled to vote for election of directors or other managing authority'),
    DashBoardWellcomeSecModel('Country ', 'refers to: United Kingdom.'),
    DashBoardWellcomeSecModel('Company ', '(referred to as either "the Company," "We," "Us," or "Our" in this Agreement) refers to Martial App Ltd, ac.'),
    DashBoardWellcomeSecModel('Device ', 'means any device that can access the Service, such as a computer, a cellphone, or a digital tablet. Service refers to the Website.'),
    DashBoardWellcomeSecModel('Service ', 'refers to the Website.'),
    DashBoardWellcomeSecModel('Terms and Conditions ', '(also referred to as "Terms") mean these Terms and Conditions that form the entire agreement between You and the Company regarding the use of the'),
    DashBoardWellcomeSecModel('Third Party Social Media Service ', 'means any service or content provided by a third party that may be displayed included or made available by the Service'),
    DashBoardWellcomeSecModel('Website ', 'reffers to Martial App accessible from, https://martialapp.com/.'),
    DashBoardWellcomeSecModel('You ', 'means the individual accessing or using the Service, or the company, or other legal entity or behalf of which such individual accessing or using the Service, as applicable'),

  ];
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
       'Terms & Conditions',  
    ), 
    ),
    drawer: customDrawer(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SizedBox(height: 20.h,),
            customTextRegular(title: 'Martial App Terms and Conditions',fontSize: 16.h,fontWeight: FontWeight.w600),
            SizedBox(height: 10.h,),
            customTextRegular(title: 'Last updated: June 04, 2021 Please read these terms and conditions carefully before using Our Service.',
            fontSize: 14.h,fontWeight: FontWeight.w400),
            SizedBox(height: 10.h,),
            customTextRegular(title: 'Interpretation and Definitions Interpretation',fontSize: 16.h,fontWeight: FontWeight.w600), 
            SizedBox(height: 10.h,),
            customTextRegular(title: 'The words with capitalized initials have meanings defined under the following conditions. The following definitions apply whether they appear in singular or plural.',
            fontSize: 14.h,fontWeight: FontWeight.w400),
            SizedBox(height: 10.h,),
            customTextRegular(title: 'For the purposes of these Terms and Conditions:',
            fontSize: 14.h,fontWeight: FontWeight.w400),
             SizedBox(height: 10.h,),
            customTextRegular(title: 'Definitions',fontSize: 16.h,fontWeight: FontWeight.w600),
            SizedBox(height: 10.h,),
            ...List.generate(
              text.length, (index) => Padding(
                padding: EdgeInsets.only(bottom: 5.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 5.h),
                      child: Icon(Icons.brightness_1_rounded, size: 6.h),
                    ),
                    SizedBox(width: 8.w,),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                        children: [
                          TextSpan(
                            text: text[index].icon,
                            style: TextStyle(
                              fontFamily: 'EnnVisions',
                              fontSize: 14.h,
                              color: AppColors.black,
                              fontWeight: FontWeight.w600
                            )
                          ),
                          TextSpan(
                            text: text[index].text,
                            style: TextStyle(
                              fontFamily: 'EnnVisions',
                              fontSize: 14.h,
                              color: AppColors.black,
                              fontWeight: FontWeight.w400
                            )
                          )
                        ]
                        ),
                      ),
                    ),
                  ],
                ),
              )),
            SizedBox(height: 10.h,),
            customTextRegular(title: 'Our Service may contain links to third-party websites or services that are not owned or controlled by the Company. The Company has no control over, and assumes no responsibility for, the content, privacy policies, or practices of any third-party websites or services. You further acknowledge and agree that the Company shall not be responsible or liable, directly or indirectly, for any damage or loss caused or alleged to be caused by or in connection with the use of or reliance on any such content, goods, or services available on or through any such websites or services. We strongly advise You to read the terms and conditions and privacy policies of any third-party websites or services that You visit.',
            fontSize: 14.h,fontWeight: FontWeight.w400),
            SizedBox(height: 20.h,),
            ],
          ),
        ),
      ),
    );
  }
}