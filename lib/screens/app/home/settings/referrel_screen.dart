import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qaren/utils/app_colors.dart';
import 'package:qaren/widgets/qaren_text.dart';

class ReferrelScreen extends StatefulWidget {
  const ReferrelScreen({Key? key}) : super(key: key);

  @override
  State<ReferrelScreen> createState() => _ReferrelScreenState();
}

class _ReferrelScreenState extends State<ReferrelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: QarenText(
          title: 'Referrel',
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
          SizedBox(height: 25.h),
          QarenText(
            title: 'Invite Friend',
            textAlign: TextAlign.center,
            textColor: const Color(0XFF5745DE),
            fontSize: 17.sp,
            fontWeight: FontWeight.w600,
          ),
          SizedBox(height: 15.h),
          QarenText(
            title:
                'Get your friends to join you! you\'ll receive 25 point for each successful invite',
            textAlign: TextAlign.center,
            textColor: AppColors.blue,
            fontSize: 13.sp,
            fontWeight: FontWeight.w600,
          ),
          SizedBox(height: 20.h),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade100.withOpacity(0.4),
              borderRadius: BorderRadius.circular(25.r),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Expanded(
                          child: Image(
                        image: AssetImage('images/app_logo.png'),
                        height: 44,
                        width: 115,
                      )),
                      Container(
                        width: 24.w,
                        height: 24.h,
                        decoration: BoxDecoration(
                          color: AppColors.blue,
                          borderRadius: BorderRadius.circular(12.w),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          color: Colors.white,
                          icon: const Icon(Icons.share),
                          iconSize: 10.w,
                          padding: EdgeInsets.zero,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15.h),
                  const Image(
                    image: AssetImage('images/user.png'),
                    height: 75,
                    width: 75,
                  ),
                  QarenText(
                    title: 'Mohammed Ali',
                    textColor: const Color(0XFF1773E2),
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      QarenText(
                        title: 'User ID : ',
                        textColor: AppColors.semiBlack,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                      QarenText(
                        title: '564545612',
                        textColor: AppColors.blue,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                  SizedBox(height: 25.h),
                  QarenText(
                    title: 'I am subscribed in Qaren \ncome join me',
                    textAlign: TextAlign.center,
                    textColor: const Color(0XFF5745DE),
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(height: 20.h),
                  Container(
                    height: 50.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(color: const Color(0XFFB9B9B9),width: 1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          QarenText(
                            title: 'https://xd.adobe.com/view/56d...',
                            textAlign: TextAlign.center,
                            textColor: AppColors.gray,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ),
                          const Spacer(),
                          SvgPicture.asset('images/copy.svg'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
