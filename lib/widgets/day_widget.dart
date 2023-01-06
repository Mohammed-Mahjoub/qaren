import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qaren/widgets/qaren_text.dart';

class DayWidget extends StatelessWidget {
  final String day;
  final bool isDay;

  const DayWidget({
    required this.day,
    this.isDay = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      width: 45.w,
      decoration: BoxDecoration(
        color: isDay ? const Color(0XFF689DDE) : Colors.white,
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(
          color: isDay ? const Color(0XFF689DDE) : Colors.black,
          width: 1.w,
        ),
      ),
      child: Center(
        child: QarenText(
          title: day,
          textColor: isDay ? Colors.white : Colors.black,
          fontSize: 16.sp,
        ),
      ),
    );
  }
}
