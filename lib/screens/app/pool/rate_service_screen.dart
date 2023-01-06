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

class RateServiceScreen extends StatefulWidget {
  const RateServiceScreen({Key? key}) : super(key: key);

  @override
  State<RateServiceScreen> createState() => _RateServiceScreenState();
}

class _RateServiceScreenState extends State<RateServiceScreen> {
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
                    title: 'Would you advice other to download Qaren',
                    textColor: AppColors.semiBlack,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  SizedBox(height: 25.h),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){
                          _showThankDialog(context);
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
                              title: 'Yes',
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              textColor: AppColors.semiBlack,
                            ),
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
                            title: 'No',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            textColor: AppColors.semiBlack,
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
  Future<void> _showThankDialog(BuildContext context) async {
    showDialog(
        context: context,
        barrierColor: Colors.white60,
        builder: (_) {
          return StatefulBuilder(
            builder: (context, setState) {
              return AlertDialog(
                backgroundColor: Colors.white,
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                content: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          height: 20.h,
                          width: 20.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5.r),
                            border: Border.all(
                              color: Colors.black,
                              width: 1.w,
                            ),
                          ),
                          child: Center(
                            child: QarenText(
                              title: 'x',
                              textColor: Colors.black,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    QarenText(
                      title: '''Thank You
For Your Cooperation With Us''',
                      textAlign: TextAlign.center,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w600,
                      textColor: AppColors.blue,
                    ),
                    Row(
                      children: [
                        QarenText(
                          title: 'Much Respect -',
                          textAlign: TextAlign.center,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          textColor: AppColors.blue,
                        ),
                        QarenText(
                          title: ' Qaren App Manage',
                          textAlign: TextAlign.center,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          textColor: AppColors.darkBlue,
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          );
        });
  }

}
