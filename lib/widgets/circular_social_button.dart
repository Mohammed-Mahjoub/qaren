import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CircularSocialButton extends StatelessWidget {
  const CircularSocialButton({
    Key? key,
    required this.iconName,
    required this.onPressed,
    this.marginEnd = 0,
  }) : super(key: key);

  final String iconName;
  final double marginEnd;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsetsDirectional.only(end: marginEnd),
        height: 24.h,
        width: 24.w,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFFEBF4FF),
        ),
        child: SvgPicture.asset(
          'images/$iconName.svg',
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
