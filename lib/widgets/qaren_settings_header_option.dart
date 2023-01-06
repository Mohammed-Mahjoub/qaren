import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qaren/utils/app_colors.dart';
import 'package:qaren/widgets/qaren_text.dart';

class QarenSettingsHeaderOption extends StatelessWidget {
  const QarenSettingsHeaderOption({
    Key? key,
    required this.image,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  final String image;
  final String title;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      focusColor: Colors.transparent,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      hoverColor: Colors.transparent,
      child: Container(
        height: 100.h,
        width: 100.w,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 0),
              blurRadius: 20,
              color: Colors.black.withOpacity(0.08),
            )
          ],
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('images/$image.svg'),
            SizedBox(height: 10.h),
            QarenText(
              title: title,
              textColor: AppColors.semiBlack,
              fontSize: 12,
            ),
          ],
        ),
      ),
    );
  }
}
