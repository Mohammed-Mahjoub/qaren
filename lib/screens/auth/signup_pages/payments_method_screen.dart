import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qaren/utils/app_colors.dart';
import 'package:qaren/widgets/qaren_text.dart';

class PaymentsMethodScreen extends StatefulWidget {
  const PaymentsMethodScreen({Key? key}) : super(key: key);

  @override
  State<PaymentsMethodScreen> createState() => _PaymentsMethodScreenState();
}

class _PaymentsMethodScreenState extends State<PaymentsMethodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () => Navigator.pop(context),
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: QarenText(
          title: 'Select Payment Method',
          textColor: Colors.black,
          fontSize: 17.sp,
          fontWeight: FontWeight.w500,
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 25.h,
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            itemCount: 3,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 25.h,
              crossAxisSpacing: 25.w,
              childAspectRatio: 160.w / 160.h,
            ),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: AppColors.grayBackGround,
                  borderRadius: BorderRadius.circular(25.h),
                ),
                child: SvgPicture.asset(
                  'images/paypal.svg',
                  width: 60.w,
                  fit: BoxFit.scaleDown,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
