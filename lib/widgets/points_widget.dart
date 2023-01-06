import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qaren/utils/app_colors.dart';
import 'package:qaren/widgets/qaren_gradient_button.dart';
import 'package:qaren/widgets/qaren_text.dart';

class PointsWidget extends StatelessWidget {
  const PointsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          SvgPicture.asset(
            'images/loyalty.svg',
            height: 60,
            width: 40,
          ),
          QarenText(
            title: '25',
            fontSize: 32.sp,
            fontWeight: FontWeight.bold,
            textColor: const Color(0XFF689DDE),
          ),
          QarenText(
            title: 'Points',
            fontSize: 14.sp,
            textColor: Colors.black,
          ),
          SizedBox(height: 10.h),
          QarenGradientButton(
            title: '2.5 \$',
            textColor: Colors.white,
            onPressed: () {},
          ),
          SizedBox(height: 20.h),
          Align(
            alignment: Alignment.centerLeft,
            child: QarenText(
              title: 'You can redeem each point for one cent',
              textAlign: TextAlign.start,
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              textColor: Colors.black,
            ),
          ),
          SizedBox(height: 10.h),
          Align(
            alignment: Alignment.centerLeft,
            child: QarenText(
              title:
              'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor.',
              textAlign: TextAlign.start,
              fontSize: 13.sp,
              textColor: AppColors.gray,
            ),
          ),
          SizedBox(height: 20.h),
          Align(
            alignment: Alignment.centerLeft,
            child: QarenText(
              title: 'Received Point',
              textAlign: TextAlign.start,
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              textColor: Colors.black,
            ),
          ),
          SizedBox(height: 15.h),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding:
            EdgeInsets.symmetric(horizontal: 8.w, vertical: 25.h),
            itemCount: 10,
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
                        QarenText(
                          title: '10 Point Recived',
                          textColor: AppColors.blue,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        ),
                        QarenText(
                          title:
                          'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam',
                          textColor: AppColors.semiBlack,
                          fontSize: 13.sp,
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(height: 20.h),
                        Align(
                          alignment: Alignment.centerRight,
                          child: QarenText(
                            title: '12/11/2021 12:00PM',
                            textColor: AppColors.gray,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
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
