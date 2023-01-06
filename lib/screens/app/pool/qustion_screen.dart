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

class QustionScreen extends StatefulWidget {
  const QustionScreen({Key? key}) : super(key: key);

  @override
  State<QustionScreen> createState() => _QustionScreenState();
}

class _QustionScreenState extends State<QustionScreen> {
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
            title: 'Rate application services',
            textColor: AppColors.semiBlack,
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(height: 100.h),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.darkBlue, width: 1),
              borderRadius: BorderRadius.circular(25.r),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 15.h),
              child: Column(
                children: [
                  QarenText(
                    title: 'Know the work hour of stores',
                    textColor: AppColors.semiBlack,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  SizedBox(height: 25.h),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.r),
                          border:
                              Border.all(color: AppColors.darkBlue, width: 1),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 6.h),
                          child: QarenText(
                            title: '1',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            textColor: AppColors.semiBlack,
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.r),
                          border:
                          Border.all(color: AppColors.darkBlue, width: 1),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 6.h),
                          child: QarenText(
                            title: '2',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            textColor: AppColors.semiBlack,
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.r),
                          border:
                          Border.all(color: AppColors.darkBlue, width: 1),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 6.h),
                          child: QarenText(
                            title: '3',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            textColor: AppColors.semiBlack,
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.r),
                          border:
                          Border.all(color: AppColors.darkBlue, width: 1),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 6.h),
                          child: QarenText(
                            title: '4',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            textColor: AppColors.semiBlack,
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, '/suggest_screen');
                        },
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.r),
                           color: const Color(0XFFE9F3FF),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 6.h),
                            child: QarenText(
                              title: '5',
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              textColor: AppColors.semiBlack,
                            ),
                          ),
                        ),
                      ),
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
