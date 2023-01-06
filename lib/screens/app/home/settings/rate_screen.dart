import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qaren/widgets/circular_social_button.dart';
import 'package:qaren/widgets/day_widget.dart';
import 'package:qaren/widgets/qaren_gradient_button.dart';

import '../../../../utils/app_colors.dart';
import '../../../../widgets/new_message.dart';
import '../../../../widgets/previous_message.dart';
import '../../../../widgets/qaren_text.dart';

class RateScreen extends StatefulWidget {
  const RateScreen({Key? key}) : super(key: key);

  @override
  State<RateScreen> createState() => _RateScreenState();
}

class _RateScreenState extends State<RateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: QarenText(
          title: 'Rate Us',
          fontSize: 17.sp,
          textColor: Colors.black,
          fontWeight: FontWeight.w500,
        ),
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
          SizedBox(height: 80.h),
          Container(
            decoration: BoxDecoration(
              color: const Color(0XFFFCFCFC),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 30.h),
              child: Column(
                children: [
                  QarenText(
                    title: 'Rate Us On The Store',
                    fontSize: 17.sp,
                    textColor: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(height: 25.h),
                  QarenGradientButton(
                    title: 'Rate Us',
                    textColor: Colors.white,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 25.h),
          Container(
            decoration: BoxDecoration(
              color: const Color(0XFFFCFCFC),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 30.h),
              child: Column(
                children: [
                  QarenText(
                    title: 'Opinion Poll',
                    fontSize: 17.sp,
                    textColor: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(height: 25.h),
                  QarenGradientButton(
                    title: 'Apply',
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, '/opinion_pool_screen');
                    },
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
