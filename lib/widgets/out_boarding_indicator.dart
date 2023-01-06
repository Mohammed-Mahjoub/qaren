import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:qaren/utils/app_colors.dart';


class OutBoardingIndicator extends StatelessWidget {
  final int index;
  final int currentIndex;

  const OutBoardingIndicator({
    Key? key,
    required this.index,
    required this.currentIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.w,
      height: 5.h,
      margin: EdgeInsetsDirectional.only(
        start: 3.w,
        end: 3.w,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2.5.h),
        color: _getColor(),
      ),
    );
  }

  bool _isCurrentPage() => index == currentIndex;


  Color _getColor() =>
      _isCurrentPage() ? AppColors.darkBlue : AppColors.gray;
}
