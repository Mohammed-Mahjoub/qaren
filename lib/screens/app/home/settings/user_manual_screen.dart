import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qaren/utils/app_colors.dart';
import 'package:qaren/widgets/qaren_text.dart';

class UserManualScreen extends StatefulWidget {
  const UserManualScreen({Key? key}) : super(key: key);

  @override
  State<UserManualScreen> createState() => _UserManualScreenState();
}

class _UserManualScreenState extends State<UserManualScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: QarenText(
          title: 'User Manual',
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
        children: [
          SizedBox(height: 10.h),
          Row(
            children: [
              Expanded(
                child: QarenText(
                  title: 'User Manual',
                  textColor: AppColors.blue,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Expanded(
                child: QarenText(
                  title: 'They Say About Us',
                  textColor: AppColors.gray,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 15.h),
          ListView.builder(
            itemCount: 3,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(bottom: 10.h),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0XFFFCFCFC),
                    borderRadius: BorderRadius.circular(25.r),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: QarenText(
                                title:
                                    'Lorem ipsum dolor sit amet,\nsadipscing elitr.',
                                textAlign: TextAlign.start,
                                textColor: AppColors.semiBlack,
                                fontSize: 13.sp,
                              ),
                            ),
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
                        SizedBox(height: 5.h),
                        QarenText(
                          title:
                              'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam.',
                          textAlign: TextAlign.start,
                          textColor: AppColors.gray,
                          fontSize: 11.sp,
                        ),
                        SizedBox(height: 15.h),
                        Container(
                          height: 150.h,
                          width: 283.w,
                          decoration: BoxDecoration(
                            color: AppColors.gray,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
