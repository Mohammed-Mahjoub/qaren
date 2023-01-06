import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qaren/widgets/qaren_text.dart';

class QarenSettingsOption extends StatelessWidget {
  const QarenSettingsOption({
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
      // onTap: () {
      //   Navigator.pushNamed(context, '/about_us_screen');
      // },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.asset('images/$image.svg'),
          SizedBox(width: 11.w),
          QarenText(
            title: title,
            textColor: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 14.sp,
          ),
        ],
      ),
    );
  }
}
