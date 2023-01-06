import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qaren/widgets/circular_social_button.dart';
import 'package:qaren/widgets/day_widget.dart';
import 'package:qaren/widgets/qaren_gradient_button.dart';

import '../../../../utils/app_colors.dart';
import '../../../../widgets/new_message.dart';
import '../../../../widgets/previous_message.dart';
import '../../../../widgets/qaren_text.dart';

class TrackScreen extends StatefulWidget {
  const TrackScreen({Key? key}) : super(key: key);

  @override
  State<TrackScreen> createState() => _TrackScreenState();
}

class _TrackScreenState extends State<TrackScreen> {
  double weightBrightness = 0;
  double weightMinValue = 0;
  double weightMaxValue = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: QarenText(
          title: 'Track Order',
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
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10.r),
            ),
            height: 207,
            width: double.infinity,
          ),
          SizedBox(height: 15.h),
          QarenText(
            title: '1 X  Ariel Original Detergent ',
            fontSize: 12.sp,
            textColor: Colors.black,
            fontWeight: FontWeight.w500,
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 15.h),
          Row(
            children: [
              QarenText(
                title: 'Delivered by: ',
                fontSize: 16.sp,
                textColor: Colors.black,
                fontWeight: FontWeight.w500,
                textAlign: TextAlign.start,
              ),
              const Spacer(),
              QarenText(
                title: 'Today 4:35 pm',
                fontSize: 16.sp,
                textColor: Colors.black,
                fontWeight: FontWeight.w500,
                textAlign: TextAlign.start,
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    trackHeight: 15,
                    overlayColor: Colors.transparent,
                    thumbColor: const Color(0XFF689DDE),
                    activeTrackColor: const Color(0XFF689DDE),
                    minThumbSeparation: 100,
                    rangeThumbShape: const RoundRangeSliderThumbShape(
                      enabledThumbRadius: 10,
                      disabledThumbRadius: 10,
                    ),
                  ),
                  child: Slider(
                    min: weightMinValue,
                    max: weightMaxValue,
                    inactiveColor: Colors.grey.shade300.withOpacity(0.8),
                    value: weightBrightness,
                    label: weightBrightness.abs().toString(),
                    onChanged: (val) {
                      setState(() {
                        weightBrightness = val;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30.h),
          Row(
            children: [
              CircleAvatar(
                radius: 15.r,
                backgroundColor: const Color(0XFF689DDE),
                child: const Center(
                    child: Icon(
                  Icons.check,
                  color: Colors.white,
                )),
              ),
              SizedBox(width: 10.w),
              QarenText(
                title: 'Ordered On',
                fontSize: 14.sp,
                textColor: Colors.black,
                textAlign: TextAlign.start,
              ),
            ],
          ),
          SizedBox(height: 50.h),
          Row(
            children: [
              CircleAvatar(
                radius: 15.r,
                backgroundColor: const Color(0XFF689DDE),
                child: const Center(
                    child: Icon(
                  Icons.check,
                  color: Colors.white,
                )),
              ),
              SizedBox(width: 10.w),
              QarenText(
                title: 'Package Ready',
                fontSize: 14.sp,
                textColor: Colors.black,
                textAlign: TextAlign.start,
              ),
            ],
          ),
          SizedBox(height: 50.h),
          Row(
            children: [
              CircleAvatar(
                radius: 15.r,
                backgroundColor: AppColors.gray,
                child: const Center(
                    child: Icon(
                  Icons.check,
                  color: Colors.white,
                )),
              ),
              SizedBox(width: 10.w),
              QarenText(
                title: 'Package Out For Delivery',
                fontSize: 14.sp,
                textColor: AppColors.gray,
                textAlign: TextAlign.start,
              ),
            ],
          ),
          SizedBox(height: 50.h),
          Row(
            children: [
              CircleAvatar(
                radius: 15.r,
                backgroundColor: AppColors.gray,
                child: const Center(
                    child: Icon(
                  Icons.check,
                  color: Colors.white,
                )),
              ),
              SizedBox(width: 10.w),
              QarenText(
                title: 'Order Completed',
                fontSize: 14.sp,
                textColor: AppColors.gray,
                textAlign: TextAlign.start,
              ),
            ],
          ),
          SizedBox(height: 40.h),
          QarenGradientButton(
            title: 'Completed',
            textColor: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
