import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qaren/utils/app_colors.dart';
import 'package:qaren/widgets/qaren_text.dart';

class OutBoardingContent extends StatelessWidget {
  final String image;
  final String title;
  final String info;

  const OutBoardingContent({
    Key? key,
    required this.image,
    required this.title,
    required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: 50.w,
        end: 50.w,
      ),
      child: Column(
        children: [
          Expanded(
            child: SvgPicture.asset(height: 250.h, image),
          ),
          SizedBox(height: 85.h),
          QarenText(
            title: title,
            fontSize: 17.sp,
            textColor: AppColors.darkBlue,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(height: 12.h),
          QarenText(
            title: info,
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            maxLines: 2,
            textColor: AppColors.semiBlack,
          ),
        ],
      ),
    );
  }
}
