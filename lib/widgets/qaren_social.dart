import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qaren/utils/app_colors.dart';

class QarenSocial extends StatelessWidget {
  const QarenSocial({
    Key? key,
    required String iconName,
    required void Function() onTap,
    double marginHorizontal = 0,
  })
      : _iconName = iconName,
        _onTap = onTap,
        _marginHorizontal = marginHorizontal,
        super(key: key);

  final String _iconName;
  final void Function() _onTap;
  final double _marginHorizontal;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _onTap,
      child: Container(
        height: 45.h,
        width: 45.h,
        margin: EdgeInsets.symmetric(horizontal: _marginHorizontal),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [
              AppColors.blue,
              AppColors.darkBlue,
            ],
          ),
        ),
        child: SvgPicture.asset(
          'images/$_iconName.svg',
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
