import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QarenText extends StatelessWidget {
  final String title;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final double? height;
  final int? maxLines;
  final TextOverflow? textOverflow;
  final Color? backgroundColor;

  final TextDecoration? textDecoration;
  final Color? decorationColor;
  final TextDecorationStyle? decorationStyle;
  final double? decorationThickness;

  const QarenText({
    Key? key,
    required this.title,
    this.textColor = Colors.white,
    this.fontSize = 22,
    this.height,
    this.fontWeight = FontWeight.normal,
    this.textAlign = TextAlign.center,
    this.maxLines,
    this.textOverflow,
    this.backgroundColor,
    this.textDecoration,
    this.decorationColor,
    this.decorationStyle,
    this.decorationThickness,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      key: key,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: textOverflow,
      softWrap: true,
      style: GoogleFonts.poppins(
        color: textColor,
        height: height,
        fontSize: fontSize.sp,
        fontWeight: fontWeight,
        backgroundColor: backgroundColor,
        decoration: textDecoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        decorationThickness: decorationThickness,
      ),
    );
  }
}
