import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qaren/utils/app_colors.dart';

class QarenTextField extends StatelessWidget {
  const QarenTextField({
    Key? key,
    required this.label,
    required this.controller,
    this.suffixIcon,
    this.minLines = 1,
    this.maxLines = 1,
    this.textInputType = TextInputType.text,
    this.obscureText = false,
    this.expands = false,
    this.readOnly = false,
    this.icon,
    this.onTap,
  }) : super(key: key);

  final String label;
  final String? suffixIcon;
  final TextEditingController controller;
  final bool obscureText;
  final TextInputType textInputType;
  final int? minLines;
  final int? maxLines;
  final bool expands;
  final bool readOnly;
  final Widget? icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: GoogleFonts.poppins(),
      keyboardType: textInputType,
      minLines: minLines,
      maxLines: maxLines,
      expands: expands,
      obscureText: obscureText,
      readOnly: readOnly,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: GoogleFonts.poppins(
          fontSize: 12.sp,
          color: AppColors.gray,
          backgroundColor: Colors.transparent,
          decorationColor: Colors.transparent,
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w),
        constraints: BoxConstraints(maxHeight: 45.h),
        suffixIcon: suffixIcon != null
            ? SvgPicture.asset(
                'images/$suffixIcon.svg',
                fit: BoxFit.scaleDown,
              height: 24,
              width: 24,
              color: AppColors.gray,
              )
            : icon != null ? InkWell(onTap: onTap,child: icon) : null,
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
    );
  }
}
