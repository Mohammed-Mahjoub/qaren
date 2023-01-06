import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qaren/utils/app_colors.dart';
import 'package:qaren/widgets/qaren_text.dart';

class QarenGradientButton extends StatelessWidget {
  const QarenGradientButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.margin = EdgeInsets.zero,
    this.height = 50,
    this.fontSize = 17,
    this.textColor = Colors.black,
    this.buttonColor = Colors.transparent,
  }) : super(key: key);

  final String title;
  final void Function() onPressed;
  final EdgeInsets margin;
  final int height;
  final int fontSize;
  final Color textColor;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      width: double.infinity,
      height: height.h,
      margin: margin,
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
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: buttonColor,
          shadowColor: Colors.transparent,
        ),
        child: QarenText(
          title: title,
          fontSize: fontSize.sp,
          fontWeight: FontWeight.w500,
          textColor: textColor,
        ),
      ),
    );
  }
}
