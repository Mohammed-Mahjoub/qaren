import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qaren/utils/app_colors.dart';

class QarenDropDown<T> extends StatelessWidget {
  const QarenDropDown({
    Key? key,
    required this.hint,
    required this.items,
    this.marginTop = 25,
  }) : super(key: key);

  final double marginTop;
  final String hint;
  final List<DropdownMenuItem<T>>? items;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      margin: EdgeInsetsDirectional.only(top: marginTop.h),
      alignment: Alignment.center,
      padding: EdgeInsetsDirectional.only(start: 25.w, end: 15.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.h),
        border: Border.all(
          color: AppColors.gray,
          width: 1,
        ),
      ),
      child: DropdownButton<T>(
        isExpanded: true,
        dropdownColor: Colors.white,
        borderRadius: BorderRadius.circular(25),
        underline: const SizedBox(),
        hint: Text(
          hint,
          style: GoogleFonts.poppins(
            color: const Color(0xFF414C6A),
            fontSize: 12.sp,
          ),
        ),
        style: GoogleFonts.poppins(
          color: const Color(0xFF414C6A),
          fontSize: 12.sp,
        ),
        icon: SvgPicture.asset('images/ic_arrow.svg'),
        onChanged: (T? selectedValue) {},
        items: items,
      ),
    );
  }
}
