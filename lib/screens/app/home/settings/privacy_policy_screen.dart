import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/app_colors.dart';
import '../../../../widgets/qaren_text.dart';
class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: QarenText(
          title: 'Privacy Policy',
          fontSize: 17.sp,
          textColor: Colors.black,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.only(
            start: 16.w,
            end: 16.w
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 25.h,),
            QarenText(
              title:
              'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor.',
              fontWeight: FontWeight.w400,
              textColor: AppColors.text,
              fontSize: 13.sp,
              textAlign: TextAlign.start,
            )
          ],
        ),
      ),
    );
  }
}
