import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qaren/utils/app_colors.dart';
import 'package:qaren/widgets/qaren_gradient_button.dart';
import 'package:qaren/widgets/qaren_text.dart';
import 'package:qaren/widgets/qaren_text_field.dart';

import 'circular_social_button.dart';

class NewMessage extends StatelessWidget {
  const NewMessage({
    Key? key,
    required TextEditingController messageController,
  }) : _messageController = messageController, super(key: key);

  final TextEditingController _messageController;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 32.w),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        QarenText(
          title: 'Start anew conversation',
          textColor: AppColors.semiBlack,
          fontSize: 17.sp,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(height: 25.h),
        QarenTextField(
          label: 'Write Message',
          controller: _messageController,
          maxLines: 4,
          minLines: 4,
          expands: false,
        ),
        SizedBox(height: 25.h),
        QarenGradientButton(
          title: 'Send',
          onPressed: () {
            Navigator.pushNamed(context, '/contact_us_screen');
          },
          textColor: Colors.white,
        ),
        SizedBox(height: 20.h),
        Container(
          color: AppColors.grayBackGround,
          height: 34.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const QarenText(
                title: 'Contact Us via',
                textColor: Colors.black,
                fontSize: 11,
                fontWeight: FontWeight.normal,
              ),
              SizedBox(width: 10.w),
              CircularSocialButton(
                iconName: 'ic_whats_app',
                marginEnd: 10,
                onPressed: () {},
              ),
              CircularSocialButton(
                iconName: 'ic_telegram',
                marginEnd: 10,
                onPressed: () {},
              ),
              CircularSocialButton(
                iconName: 'ic_twitter',
                marginEnd: 10,
                onPressed: () {},
              ),
              CircularSocialButton(
                iconName: 'ic_facebook_small',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
