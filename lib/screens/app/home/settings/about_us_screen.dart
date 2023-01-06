import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qaren/utils/app_colors.dart';
import 'package:qaren/widgets/qaren_text.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: QarenText(
          title: 'About Us',
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
            SizedBox(height: 10.h,),
            Center(
              child: Image.asset(
                'images/app_logo.png',
                height: 44.h,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            QarenText(
              title: 'About Us',
              textColor: Colors.black,
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(
              height: 10.h,
            ),
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
