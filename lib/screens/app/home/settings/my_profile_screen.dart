import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qaren/utils/app_colors.dart';
import 'package:qaren/widgets/qaren_text.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: QarenText(
          title: 'My Profile',
          textColor: AppColors.semiBlack,
          fontSize: 17.sp,
          fontWeight: FontWeight.w400,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        children: [
          SizedBox(height: 20.h),
          const Image(
            image: AssetImage('images/user.png'),
            height: 70,
            width: 70,
          ),
          QarenText(
            title: 'Mohammed Ali',
            textColor: AppColors.blue,
            fontSize: 17.sp,
            fontWeight: FontWeight.w400,
          ),
          SizedBox(height: 20.h),
          Row(
            children: [
              QarenText(
                title: 'User ID',
                textColor: AppColors.semiBlack,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
              const Spacer(),
              SvgPicture.asset('images/copy.svg'),
            ],
          ),
          SizedBox(height: 10.h),
          Container(
            height: 48,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0XFFFCFCFC),
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: QarenText(
                  title: '564545612',
                  fontSize: 12.sp,
                  textColor: const Color(0XFFB8B7B7),
                ),
              ),
            ),
          ),
          SizedBox(height: 15.h),
          Row(
            children: [
              QarenText(
                title: 'Email Address',
                textColor: AppColors.semiBlack,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/edit_email_screen');
                },
                child: SvgPicture.asset('images/edit.svg'),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Container(
            height: 48,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0XFFFCFCFC),
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: QarenText(
                  title: 'Example@Gmail.com',
                  fontSize: 12.sp,
                  textColor: const Color(0XFFB8B7B7),
                ),
              ),
            ),
          ),
          SizedBox(height: 15.h),
          Row(
            children: [
              QarenText(
                title: 'Phone Number',
                textColor: AppColors.semiBlack,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
              const Spacer(),
              SvgPicture.asset('images/edit.svg'),
            ],
          ),
          SizedBox(height: 10.h),
          Container(
            height: 48,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0XFFFCFCFC),
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: QarenText(
                  title: '+9725600000',
                  fontSize: 12.sp,
                  textColor: const Color(0XFFB8B7B7),
                ),
              ),
            ),
          ),
          SizedBox(height: 15.h),
          Row(
            children: [
              QarenText(
                title: 'My Address',
                textColor: AppColors.semiBlack,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
              const Spacer(),
              InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/add_address_screen');
                  },
                  child: const Icon(Icons.add)),
            ],
          ),
          SizedBox(height: 10.h),
          Container(
            height: 48,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0XFFFCFCFC),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: [
                  QarenText(
                    title: 'Country, region , St , No',
                    fontSize: 12.sp,
                    textColor: const Color(0XFFB8B7B7),
                  ),
                  const Spacer(),
                  QarenText(
                    title: 'Default',
                    fontSize: 12.sp,
                    textColor: AppColors.blue,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 5.h),
          Container(
            height: 48,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0XFFFCFCFC),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Align(
                alignment: Alignment.centerLeft,
                child: QarenText(
                  title: 'Country, region , St , No',
                  fontSize: 12.sp,
                  textColor: const Color(0XFFB8B7B7),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
