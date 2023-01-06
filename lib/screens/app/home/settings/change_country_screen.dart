import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/app_colors.dart';
import '../../../../widgets/qaren_text.dart';
class ChangeCountryScreen extends StatefulWidget {
  const ChangeCountryScreen({Key? key}) : super(key: key);

  @override
  State<ChangeCountryScreen> createState() => _ChangeCountryScreenState();
}

class _ChangeCountryScreenState extends State<ChangeCountryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: QarenText(
          title: 'Change Country',
          fontSize: 17.sp,
          textColor: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        itemCount: 10,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing: 0.h,
          crossAxisSpacing: 15.w,
          childAspectRatio: 343.w / 48.h,
        ),
        itemBuilder: (context, index) {
          return Container(
            decoration: const BoxDecoration(
              color: AppColors.language,
            ),
            child: Row(
              children: [
                SizedBox(width: 20.w,),
                QarenText(title: 'Palestine',
                fontSize: 14.sp,
                textColor: Colors.black,
                fontWeight: FontWeight.w400,
                )
              ],
            ),

          );
        },
      ),
    );
  }
}
