import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class QarenOrSeparator extends StatelessWidget {
  const QarenOrSeparator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            color: Color(0xFF707070),
            thickness: 0.25,
          ),
        ),
        SizedBox(width: 15.w),
        Text(
          'Or',
          style: GoogleFonts.poppins(
            color: const Color(0xFFACB1C0),
          ),
        ),
        SizedBox(width: 15.w),
        const Expanded(
          child: Divider(
            color: Color(0xFF707070),
            thickness: 0.25,
          ),
        ),
      ],
    );
  }
}
