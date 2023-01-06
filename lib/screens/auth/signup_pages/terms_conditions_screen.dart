import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qaren/utils/app_colors.dart';
import 'package:qaren/utils/temp_content.dart';
import 'package:qaren/widgets/qaren_bordered_button.dart';
import 'package:qaren/widgets/qaren_button.dart';
import 'package:qaren/widgets/qaren_text.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
          color: Colors.black,
        ),
        title: Image.asset(
          'images/center_logo.png',
          width: 115.w,
          height: 44.h,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.only(
          start: 18.w,
          end: 18.w,
          top: 25.h,
          bottom: 45.h,
        ),
        child: Column(
          children: [
             const Expanded(
              child: SingleChildScrollView(
                child: QarenText(
                  title:
                      '$tempParagraph \n\n $tempParagraph \n\n $tempParagraph',
                  textColor: AppColors.grayReset,
                  fontSize: 13,
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            SizedBox(height: 34.h),
            Row(
              children: [
                Expanded(
                  child: QarenBorderedButton(
                    title: 'Decline',
                    onPressed: () {},
                  ),
                ),
                const Spacer(),
                Expanded(
                  child: QarenButton(
                    text: 'Accept',
                    edgeInsetsDirectional: EdgeInsetsDirectional.zero,
                    color: AppColors.darkBlue,
                    borderRadius: 25.h,
                    height: 50,
                    fontSize: 13,
                    elevation: 0,
                    onPressed: () {
                    },
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
