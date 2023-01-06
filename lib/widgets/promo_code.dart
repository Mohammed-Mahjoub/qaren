import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qaren/utils/app_colors.dart';
import 'package:qaren/widgets/qaren_gradient_button.dart';
import 'package:qaren/widgets/qaren_text.dart';

class PromoCode extends StatelessWidget {
  final String text;
  final Function () onPress;
  const PromoCode({
    this.text = 'Copy Code',
    required this.onPress,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 25.h),
      itemCount: 10,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 10.h),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.r),
              border: Border.all(color: const Color(0XFF689DDE)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Image(
                        image: AssetImage('images/poke.png'),
                        width: 60,
                        height: 60,
                      ),
                      SizedBox(width: 10.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            QarenText(
                              title: 'Super Market Name',
                              textColor: AppColors.semiBlack,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.bold,
                            ),
                            QarenText(
                              title:
                              'one or two 25% rows Offer name here one or two rows',
                              textColor: AppColors.gray,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w600,
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    children: [
                      const Spacer(
                        flex: 2,
                      ),
                      Expanded(
                        child: QarenGradientButton(
                            title: text,
                            fontSize: 14,
                            textColor: Colors.white,
                            onPressed: onPress),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
