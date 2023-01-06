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

class SuggestScreen extends StatefulWidget {
  const SuggestScreen({Key? key}) : super(key: key);

  @override
  State<SuggestScreen> createState() => _SuggestScreenState();
}

class _SuggestScreenState extends State<SuggestScreen> {
  late TextEditingController _suggestController;

  @override
  void initState() {
    super.initState();
    _suggestController = TextEditingController();
  }

  @override
  void dispose() {
    _suggestController.dispose();
    super.dispose();
  }

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
            title:
                'Any services are not available and you suggest to be added to the application.',
            textAlign: TextAlign.start,
            textColor: AppColors.semiBlack,
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(height: 25.h),
          QarenTextField(
            label: '',
            maxLines: 4,
            minLines: 4,
            expands: false,
            controller: _suggestController,
          ),
          SizedBox(height: 30.h),
          QarenGradientButton(title: 'Send', textColor: Colors.white,onPressed: (){
            Navigator.pushNamed(context, '/rate_service_screen');
          })
        ],
      ),
    );
  }
}
