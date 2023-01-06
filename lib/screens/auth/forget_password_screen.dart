import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qaren/utils/app_colors.dart';
import 'package:qaren/widgets/qaren_text.dart';
import 'package:qaren/widgets/qaren_text_field.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  late TextEditingController _emailTextController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailTextController = TextEditingController();
  }

  @override
  void dispose() {
    _emailTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: QarenText(
          title: 'Forget Password',
          fontWeight: FontWeight.w500,
          textColor: Colors.black,
          fontSize: 17.sp,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.only(start: 16.w, end: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30.h,
            ),
            QarenText(
              title: 'Reset Your Password',
              fontSize: 17.sp,
              fontWeight: FontWeight.w500,
              textColor: AppColors.darkBlue,
            ),
            SizedBox(
              height: 5.h,
            ),
            QarenText(
                title:
                    'Please enter your email address to search for your account.',
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                textColor: AppColors.grayReset,
                textAlign: TextAlign.left),
            SizedBox(height: 52.h),
            Padding(
              padding: EdgeInsetsDirectional.only(start: 16.w, end: 16.w),
              child: QarenTextField(
                label: 'Email',
                suffixIcon: 'ic_email',
                controller: _emailTextController,
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(end: 16.w, start: 16.w),
              child: Container(
                clipBehavior: Clip.antiAlias,
                width: double.infinity,
                height: 50.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.h),
                  gradient: const LinearGradient(
                    begin: AlignmentDirectional.centerStart,
                    end: AlignmentDirectional.centerEnd,
                    colors: [
                      AppColors.blue,
                      AppColors.darkBlue,
                    ],
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () => Navigator.pushReplacementNamed(
                      context, '/forget_password_verify_screen'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),
                  child: QarenText(
                    title: 'Reset Password',
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
