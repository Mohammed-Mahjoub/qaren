import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qaren/utils/app_colors.dart';
import 'package:qaren/widgets/qaren_text.dart';

class SwitchOptionItem extends StatelessWidget {
  const SwitchOptionItem({
    Key? key,
    required this.title,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  final String title;
  final bool value;
  final void Function(bool? value) onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.h),
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      height: 44.h,
      color: AppColors.fill,
      child: Row(
        children: [
          QarenText(
            title: title,
            textColor: const Color(0xFFACB1C0),
            fontSize: 12,
          ),
          const Spacer(),
          Switch(
            value: value,
            onChanged: onChanged,
            inactiveThumbColor: const Color(0xFFACB1C0),
            activeTrackColor: const Color(0xFFEBF4FF),
            inactiveTrackColor: const Color(0xFFF5F7FF),
          ),
        ],
      ),
    );
  }
}
