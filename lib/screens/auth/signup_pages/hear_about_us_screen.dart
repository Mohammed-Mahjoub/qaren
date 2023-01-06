import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qaren/widgets/qaren_text.dart';

import '../../../widgets/qaren_bordered_button.dart';
import '../../../widgets/qaren_drop_down.dart';
import '../../../widgets/qaren_gradient_button.dart';
class HearAboutUsScreen extends StatefulWidget {
  const HearAboutUsScreen({Key? key}) : super(key: key);

  @override
  State<HearAboutUsScreen> createState() => _HearAboutUsScreenState();
}

class _HearAboutUsScreenState extends State<HearAboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () => Navigator.pop(context),
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0,

      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.w,
        vertical: 25.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            QarenText(title: 'How did you hear about us',
            textColor: Colors.black,
            fontSize: 17.sp,
              fontWeight: FontWeight.w500,
            ),
             SizedBox(height: 25.h,),
             QarenDropDown<int>(
              marginTop: 0,
              hint: 'From friend',
              items: [],
            ),
            SizedBox(height: 61.h,),
            QarenGradientButton(
              title: 'Continue',
              onPressed: () => Navigator.pushReplacementNamed(
                  context, '/signup_screen'),
            ),
          ],
        ),
      ),
    );
  }
}
