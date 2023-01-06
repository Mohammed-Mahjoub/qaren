import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qaren/utils/app_colors.dart';

class QarenBorderedButton extends StatelessWidget {
  const QarenBorderedButton({
    Key? key,
    required this.title,
    required this.onPressed,
     this.borderRadius=25,
     this.height=50,
     this.fontSize=17,
     this.backgroundColor=AppColors.darkBlue,
     this.textColor=AppColors.darkBlue,

     this.width= double.infinity,
  }) : super(key: key);

  final String title;
  final int borderRadius;
  final int height;
  final int fontSize;
  final double width;
  final Color backgroundColor;
  final Color textColor;

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: Colors.transparent,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius.h),
          side:  BorderSide(
            color: backgroundColor,
            width: 1,
          ),
        ),
        minimumSize: Size(width, height.h),
      ),
      child: Text(
        title,
        style: GoogleFonts.poppins(
          color: textColor,
          fontSize: fontSize.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
