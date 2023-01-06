import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qaren/widgets/qaren_text.dart';

import '../utils/app_colors.dart';


class QarenButton extends StatelessWidget {
  final String text;
  final Color color;
  final EdgeInsetsDirectional edgeInsetsDirectional;
  final bool bordered;
  final Color borderColor;
  final Color textColor;
  final double fontSize;
  final double? width;
  final double height;
  final double elevation;
  final double? textHeight;
  final double borderRadius;
  final VoidCallback? onPressed;
  final AlignmentDirectional? alignment;
  final bool enabled;

  const QarenButton({Key? key,
    required this.text,
    this.color = Colors.transparent,
    this.borderColor = Colors.transparent,
    this.textColor = Colors.white,
    this.fontSize = 15,
    this.width = double.infinity,
    this.height = 44,
    this.elevation = 3,
    this.textHeight,
    this.borderRadius = 22,
    required this.edgeInsetsDirectional,
    required this.onPressed,
    this.bordered = false,
    this.alignment,
    this.enabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      width: width,
      height: height.h,
      margin: edgeInsetsDirectional,
      child: TextButton(
        onPressed: enabled ? onPressed : null,
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: enabled ? color : AppColors.gray,
          elevation: elevation,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: bordered
                ? BorderSide(
                    width: 1,
                    color: borderColor,
                  )
                : BorderSide.none,
          ),
        ),
        child: QarenText(
          fontSize: fontSize.sp,
          height: textHeight,
          fontWeight: FontWeight.w500,
          title: text,
          textColor: textColor,
        ),
      ),
    );
  }
}
