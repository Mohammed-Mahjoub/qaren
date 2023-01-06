import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qaren/utils/app_colors.dart';
import 'package:qaren/widgets/qaren_text.dart';

class RateCircle extends StatelessWidget {
  final String text;
  const RateCircle({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, '/qustion_screen');
      },
      child: Container(
        height: 50.h,
        width: 50.w,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: AppColors.darkBlue,width: 1),
        ),
        child: Center(
          child: QarenText(
            title: text,
            textColor: AppColors.semiBlack,
            fontSize: 9.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
