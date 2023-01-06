import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qaren/widgets/qaren_code_text_field.dart';

import '../../utils/app_colors.dart';
import '../../widgets/qaren_text.dart';

class ForgetPasswordVerifyScreen extends StatefulWidget {
  const ForgetPasswordVerifyScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordVerifyScreen> createState() =>
      _ForgetPasswordVerifyScreenState();
}

class _ForgetPasswordVerifyScreenState
    extends State<ForgetPasswordVerifyScreen> {
  late TextEditingController _firstCodeTextController;
  late TextEditingController _secondCodeTextController;
  late TextEditingController _thirdCodeTextController;
  late TextEditingController _fourthCodeTextController;

  late FocusNode _firstFocusNode;
  late FocusNode _secondFocusNode;
  late FocusNode _thirdFocusNode;
  late FocusNode _fourthFocusNode;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _firstCodeTextController = TextEditingController();
    _secondCodeTextController = TextEditingController();
    _thirdCodeTextController = TextEditingController();
    _fourthCodeTextController = TextEditingController();

    _firstFocusNode = FocusNode();
    _secondFocusNode = FocusNode();
    _thirdFocusNode = FocusNode();
    _fourthFocusNode = FocusNode();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _firstCodeTextController.dispose();
    _secondCodeTextController.dispose();
    _thirdCodeTextController.dispose();
    _fourthCodeTextController.dispose();

    _firstFocusNode.dispose();
    _secondFocusNode.dispose();
    _thirdFocusNode.dispose();
    _fourthFocusNode.dispose();
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
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () => Navigator.pop(context),
          color: Colors.black,
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsetsDirectional.only(
              start: 16.w,
              end: 16.w,
              top: 35.h,
            ),
            padding: EdgeInsetsDirectional.only(
              top: 25.h,
              bottom: 36.h,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 0),
                  blurRadius: 60,
                  color: const Color(0xFF3A3A3A).withOpacity(0.07),
                ),
              ],
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.only(
                    start: 16.w,
                    end: 16.w,
                  ),
                  child: Column(
                    children: [
                      const QarenText(
                        title: 'Check Your Email ',
                        textColor: AppColors.darkBlue,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                      SizedBox(height: 3.h),
                      Padding(
                        padding: EdgeInsetsDirectional.only(
                          start: 26.w,
                          end: 26.w,
                        ),
                        child: const QarenText(
                          title:
                              'A verification code was sent to  your e-mail, enter the code to be able to change the password',
                          textColor: AppColors.grayReset,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 25.h),
                      const QarenText(
                        title: 'Enter Verification Code',
                        textColor: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                      SizedBox(height: 20.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          QarenCodeTextField(
                            controller: _firstCodeTextController,
                            focusNode: _firstFocusNode,
                            onChanged: (value) {
                              if (value.isNotEmpty) {
                                _secondFocusNode.requestFocus();
                              }
                            },
                          ),
                          SizedBox(width: 20.w),
                          QarenCodeTextField(
                            controller: _secondCodeTextController,
                            focusNode: _secondFocusNode,
                            onChanged: (value) {
                              value.isNotEmpty
                                  ? _thirdFocusNode.requestFocus()
                                  : _firstFocusNode.requestFocus();
                            },
                          ),
                          SizedBox(width: 20.w),
                          QarenCodeTextField(
                            controller: _thirdCodeTextController,
                            focusNode: _thirdFocusNode,
                            onChanged: (value) {
                              value.isNotEmpty
                                  ? _fourthFocusNode.requestFocus()
                                  : _secondFocusNode.requestFocus();
                            },
                          ),
                          SizedBox(width: 20.w),
                          QarenCodeTextField(
                            controller: _fourthCodeTextController,
                            focusNode: _fourthFocusNode,
                            onChanged: (value) {
                              if (value.isEmpty) {
                                _thirdFocusNode.requestFocus();
                              }
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: 30.h),
                      Container(
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
                              context, '/reset_password_screen'),
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
                      SizedBox(height: 30.h),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.h),
                            side: const BorderSide(
                              color: AppColors.gray,
                              width: 1,
                            ),
                          ),
                          minimumSize: Size(double.infinity, 50.h),
                        ),
                        child: Text(
                          'Resend Code',
                          style: GoogleFonts.poppins(
                            color: AppColors.gray,
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
