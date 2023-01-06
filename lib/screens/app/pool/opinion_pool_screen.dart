import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qaren/utils/app_colors.dart';
import 'package:qaren/widgets/qaren_bordered_button.dart';
import 'package:qaren/widgets/qaren_gradient_button.dart';
import 'package:qaren/widgets/qaren_or_separator.dart';
import 'package:qaren/widgets/qaren_social.dart';
import 'package:qaren/widgets/qaren_text.dart';
import 'package:qaren/widgets/qaren_text_field.dart';

import '../../../widgets/rate_circle.dart';

class OpinionPoolScreen extends StatefulWidget {
  const OpinionPoolScreen({Key? key}) : super(key: key);

  @override
  State<OpinionPoolScreen> createState() => _OpinionPoolScreenState();
}

class _OpinionPoolScreenState extends State<OpinionPoolScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Image.asset(
          'images/center_logo.png',
          width: 115.w,
          height: 44.h,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        children: [
          SizedBox(height: 20.h),
          QarenText(
            title: 'Hello User name ',
            textAlign: TextAlign.start,
            textColor: AppColors.darkBlue,
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(height: 5.h),
          QarenText(
            title: '''We are very happy that you are part of Qaren family. We 
appreciate your interest in the services provided by the 
application and always strive to satisfy you and be 
special.''',
            textAlign: TextAlign.start,
            textColor: AppColors.semiBlack,
            fontSize: 12.sp,
          ),
          SizedBox(height: 5.h),
          QarenText(
            title: '''Periodically, we conduct a survey of users of the 
application, where we are interested in hearing your 
opinion, in order to learn and improve the services 
provided by the application.''',
            textAlign: TextAlign.start,
            textColor: AppColors.semiBlack,
            fontSize: 12.sp,
          ),
          SizedBox(height: 5.h),
          QarenText(
            title: '''The duration of the poll only 15 min''',
            textAlign: TextAlign.start,
            textColor: AppColors.semiBlack,
            fontSize: 12.sp,
          ),
          SizedBox(height: 5.h),
          QarenText(
            title: '''The poll is confidential and only statistically processed 
and users’ answers are not published''',
            textAlign: TextAlign.start,
            textColor: AppColors.semiBlack,
            fontSize: 12.sp,
          ),
          SizedBox(height: 5.h),
          QarenText(
            title:
                '''In order to fill out the poll, please click on the following : ''',
            textAlign: TextAlign.start,
            textColor: AppColors.semiBlack,
            fontSize: 12.sp,
          ),
          SizedBox(height: 20.h),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.darkBlue, width: 1),
              borderRadius: BorderRadius.circular(25.r),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 15.h),
              child: Column(
                children: [
                  QarenText(
                    title: 'How satisfied are you with the idea of Qaren app?',
                    textColor: AppColors.semiBlack,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  SizedBox(height: 25.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      RateCircle(text: 'Not Satisfied'),
                      RateCircle(text: 'A little bit'),
                      RateCircle(text: 'Medium'),
                      RateCircle(text: 'A lot'),
                      RateCircle(text: 'Too Much'),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.h),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.darkBlue, width: 1),
              borderRadius: BorderRadius.circular(25.r),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 15.h),
              child: Column(
                children: [
                  QarenText(
                    title: 'How satisfied are you with the services provided by Qaren?',
                    textColor: AppColors.semiBlack,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  SizedBox(height: 25.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      RateCircle(text: 'Not Satisfied'),
                      RateCircle(text: 'A little bit'),
                      RateCircle(text: 'Medium'),
                      RateCircle(text: 'A lot'),
                      RateCircle(text: 'Too Much'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
