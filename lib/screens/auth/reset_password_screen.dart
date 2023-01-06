import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/app_colors.dart';
import '../../widgets/qaren_text.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
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
          icon: const Icon(
            Icons.arrow_back,
          ),
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
              title: 'Create a new password',
              fontSize: 17.sp,
              fontWeight: FontWeight.w500,
              textColor: AppColors.darkBlue,
            ),
            SizedBox(
              height: 5.h,
            ),
            QarenText(
                title: 'Please enter a new password to reset your password',
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                textColor: AppColors.grayReset,
                textAlign: TextAlign.left),
            SizedBox(
              height: 39.h,
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(start: 16.w, end: 16.w),
              child: Column(
                children: [
                  TextField(
                    style: GoogleFonts.poppins(),
                    obscureText: true,
                    keyboardType: TextInputType.emailAddress,
                    minLines: 1,
                    maxLines: 1,
                    decoration: InputDecoration(
                      labelText: 'Enter your new password',
                      labelStyle: GoogleFonts.poppins(
                        fontSize: 12.sp,
                        color: AppColors.gray,
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.w),
                      constraints: BoxConstraints(maxHeight: 45.h),
                      suffixIcon: SvgPicture.asset(
                        'images/ic_hide_password.svg',
                        fit: BoxFit.scaleDown,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: const BorderSide(
                          width: 1,
                          color: AppColors.gray,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: const BorderSide(
                          width: 1,
                          color: AppColors.blue,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30.h),
                  TextField(
                    style: GoogleFonts.poppins(),
                    obscureText: true,
                    keyboardType: TextInputType.emailAddress,
                    minLines: 1,
                    maxLines: 1,
                    decoration: InputDecoration(
                      labelText: 'Re-type new password',
                      labelStyle: GoogleFonts.poppins(
                        fontSize: 12.sp,
                        color: AppColors.gray,
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.w),
                      constraints: BoxConstraints(maxHeight: 45.h),
                      suffixIcon: SvgPicture.asset(
                        'images/ic_hide_password.svg',
                        fit: BoxFit.scaleDown,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: const BorderSide(
                          width: 1,
                          color: AppColors.gray,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: const BorderSide(
                          width: 1,
                          color: AppColors.blue,
                        ),
                      ),
                    ),
                  ),
                ],
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
                    title: 'Continue',
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
