import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qaren/utils/app_colors.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required String title,
    required void Function() seeAll,
    double horizontalPadding = 16,
  })  : _title = title,
        _seeAll = seeAll,
        _horizontalPadding = horizontalPadding,
        super(key: key);

  final String _title;
  final double _horizontalPadding;
  final void Function() _seeAll;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: _horizontalPadding.w),
      child: Row(
        children: [
          Text(
            _title,
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: AppColors.semiBlack,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          TextButton(
            onPressed: _seeAll,
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              alignment: AlignmentDirectional.centerEnd,
            ),
            child: Text(
              'See All',
              style: GoogleFonts.poppins(
                fontSize: 12.sp,
                color: AppColors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
