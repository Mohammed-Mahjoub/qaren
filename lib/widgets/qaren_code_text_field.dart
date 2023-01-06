import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qaren/utils/app_colors.dart';

class QarenCodeTextField extends StatelessWidget {
  const QarenCodeTextField({
    Key? key,
    required this.controller,
    required this.focusNode,
    required this.onChanged,
  }) : super(key: key);

  final TextEditingController controller;
  final FocusNode focusNode;
  final void Function(String value) onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      focusNode: focusNode,
      onChanged: onChanged,
      style: GoogleFonts.poppins(
        color: AppColors.grayReset,
        fontWeight: FontWeight.w500,
        fontSize: 17.sp,
      ),
      decoration: InputDecoration(
        fillColor: const Color(0xFFF5F7FF),
        counterText: '',
        filled: true,
        contentPadding: EdgeInsets.zero,
        constraints: BoxConstraints(
          maxHeight: 50.h,
          maxWidth: 50.h,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.h),
          borderSide: const BorderSide(
            color: Colors.transparent,
            width: 0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.h),
          borderSide: const BorderSide(
            color: Colors.transparent,
            width: 0,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: const BorderSide(
            color: Colors.transparent,
            width: 0,
          ),
        ),
      ),
      minLines: null,
      maxLines: null,
      maxLength: 1,
      expands: true,
      textAlign: TextAlign.center,
      keyboardType: const TextInputType.numberWithOptions(
        signed: false,
        decimal: false,
      ),
    );
  }
}
