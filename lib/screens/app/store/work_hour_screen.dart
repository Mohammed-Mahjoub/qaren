import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qaren/widgets/day_widget.dart';
import 'package:qaren/widgets/qaren_text.dart';

class WorkHourScreen extends StatefulWidget {
  const WorkHourScreen({Key? key}) : super(key: key);

  @override
  State<WorkHourScreen> createState() => _WorkHourScreenState();
}

class _WorkHourScreenState extends State<WorkHourScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: QarenText(
          title: 'Working Hour',
          fontSize: 17.sp,
          fontWeight: FontWeight.w600,
          textColor: Colors.black,
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 25.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                DayWidget(day: 'S', isDay: true),
                DayWidget(day: 'M'),
                DayWidget(day: 'T'),
                DayWidget(day: 'W'),
                DayWidget(day: 'T'),
                DayWidget(day: 'F'),
                DayWidget(day: 'S'),
              ],
            ),
            SizedBox(height: 40.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const QarenText(
                  title: 'From : 08:00 am',
                  fontSize: 16,
                  textColor: Colors.black,
                ),
                SizedBox(width: 25.w),
                QarenText(
                  title: 'To : 06:00 pm',
                  fontSize: 16.sp,
                  textColor: Colors.black,
                ),
              ],
            ),
            SizedBox(height: 40.h),
            QarenText(
              title: 'Note:',
              fontSize: 16.sp,
              textColor: Colors.black,
            ),
            SizedBox(height: 5.h),
            QarenText(
              title:
                  'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et.',
              textAlign: TextAlign.start,
              fontSize: 14.sp,
              textColor: const Color(0XFF979696),
            ),
          ],
        ),
      ),
    );
  }
}
