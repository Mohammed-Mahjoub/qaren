import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/app_colors.dart';
import '../../../../widgets/qaren_text.dart';
class StatisticsScreen extends StatefulWidget {
  const StatisticsScreen({Key? key}) : super(key: key);

  @override
  State<StatisticsScreen> createState() => _StatisticsScreenState();
}

class _StatisticsScreenState extends State<StatisticsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: QarenText(
          title: 'Statistics',
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
        children: [
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: const QarenText(
                    title: 'General Statistics',
                    textColor: AppColors.blue,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: const QarenText(
                    title: 'My Own Stats',
                    textColor: AppColors.gray,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15.h),
          ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            itemCount: 3,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(bottom: 10.h),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.blue,width: 1),
                    borderRadius: BorderRadius.circular(25.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 22.w,vertical: 10.h),
                    child:
                    Row(
                      children: [
                        QarenText(
                          title:
                          '25',
                          textColor: AppColors.blue,
                          fontSize: 25.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(width: 20.w),
                        Expanded(
                          child: QarenText(
                            title:
                            'My Monthly Point Average',
                            textAlign: TextAlign.start,
                            textColor: AppColors.semiBlack,
                            fontSize: 12.sp,
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
