import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qaren/widgets/day_widget.dart';

import '../../../../utils/app_colors.dart';
import '../../../../widgets/new_message.dart';
import '../../../../widgets/previous_message.dart';
import '../../../../widgets/qaren_text.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  bool support = false;
  bool preMessage = false;
  bool nMessage = true;
  late TextEditingController _messageController;

  @override
  void initState() {
    super.initState();
    _messageController = TextEditingController();
  }

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: QarenText(
          title: 'Contact Us',
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
                  onPressed: () {
                    setState(() {
                      nMessage = true;
                      preMessage = false;
                      support = false;
                    });
                  },
                  child: QarenText(
                    title: 'New Massage',
                    textColor: nMessage ? AppColors.blue : AppColors.gray,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      nMessage = false;
                      preMessage = true;
                      support = false;
                    });
                  },
                  child: QarenText(
                    title: 'Previous Massage',
                    textColor: preMessage ? AppColors.blue : AppColors.gray,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      nMessage = false;
                      preMessage = false;
                      support = true;
                    });
                  },
                  child: QarenText(
                    title: 'Support Hour',
                    textColor: support ? AppColors.blue : AppColors.gray,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 25.h),
          StatefulBuilder(
            builder: (context, setState) {
              if (nMessage) {
                return NewMessage(messageController: _messageController);
              } else if (preMessage) {
                return ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  children: [
                    SizedBox(height: 15.h),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0XFFFCFCFC),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: const Color(0XFF3AE957),
                                borderRadius: BorderRadius.circular(5.r),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 13.w, vertical: 4.h),
                                child: QarenText(
                                  title: 'Open',
                                  textColor: Colors.white,
                                  fontSize: 13.sp,
                                ),
                              ),
                            ),
                            SizedBox(height: 14.h),
                            QarenText(
                              title:
                                  'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.',
                              textAlign: TextAlign.start,
                              textColor: AppColors.semiBlack,
                              fontSize: 13.sp,
                            ),
                            SizedBox(height: 15.h),
                            Center(
                              child: Container(
                                height: 150.h,
                                width: 283.w,
                                decoration: BoxDecoration(
                                  color: AppColors.gray,
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                              ),
                            ),
                            SizedBox(height: 15.h),
                            QarenText(
                              title:
                                  'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.',
                              textAlign: TextAlign.start,
                              textColor: AppColors.semiBlack,
                              fontSize: 13.sp,
                            ),
                            SizedBox(height: 15.h),
                            Align(
                              alignment: Alignment.centerRight,
                              child: QarenText(
                                title: '12/11/2021 12:00PM',
                                textColor: AppColors.gray,
                                fontSize: 10.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15.h),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0XFFFCFCFC),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: const Color(0XFF3AE957),
                                borderRadius: BorderRadius.circular(5.r),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 13.w, vertical: 4.h),
                                child: QarenText(
                                  title: 'Open',
                                  textColor: Colors.white,
                                  fontSize: 13.sp,
                                ),
                              ),
                            ),
                            SizedBox(height: 14.h),
                            QarenText(
                              title:
                                  'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.',
                              textAlign: TextAlign.start,
                              textColor: AppColors.semiBlack,
                              fontSize: 13.sp,
                            ),
                            SizedBox(height: 15.h),
                            Align(
                              alignment: Alignment.centerRight,
                              child: QarenText(
                                title: '12/11/2021 12:00PM',
                                textColor: AppColors.gray,
                                fontSize: 10.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15.h),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0XFFFCFCFC),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: const Color(0XFFDF2E2E),
                                borderRadius: BorderRadius.circular(5.r),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 13.w, vertical: 4.h),
                                child: QarenText(
                                  title: 'Closed',
                                  textColor: Colors.white,
                                  fontSize: 13.sp,
                                ),
                              ),
                            ),
                            SizedBox(height: 14.h),
                            QarenText(
                              title:
                                  'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.',
                              textAlign: TextAlign.start,
                              textColor: AppColors.semiBlack,
                              fontSize: 13.sp,
                            ),
                            SizedBox(height: 15.h),
                            Align(
                              alignment: Alignment.centerRight,
                              child: QarenText(
                                title: '12/11/2021 12:00PM',
                                textColor: AppColors.gray,
                                fontSize: 10.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15.h),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0XFFFCFCFC),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: const Color(0XFFDF2E2E),
                                borderRadius: BorderRadius.circular(5.r),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 13.w, vertical: 4.h),
                                child: QarenText(
                                  title: 'Closed',
                                  textColor: Colors.white,
                                  fontSize: 13.sp,
                                ),
                              ),
                            ),
                            SizedBox(height: 14.h),
                            QarenText(
                              title:
                                  'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.',
                              textAlign: TextAlign.start,
                              textColor: AppColors.semiBlack,
                              fontSize: 13.sp,
                            ),
                            SizedBox(height: 15.h),
                            Center(
                              child: Container(
                                height: 150.h,
                                width: 283.w,
                                decoration: BoxDecoration(
                                  color: AppColors.gray,
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                              ),
                            ),
                            SizedBox(height: 15.h),
                            QarenText(
                              title:
                                  'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.',
                              textAlign: TextAlign.start,
                              textColor: AppColors.semiBlack,
                              fontSize: 13.sp,
                            ),
                            SizedBox(height: 15.h),
                            Align(
                              alignment: Alignment.centerRight,
                              child: QarenText(
                                title: '12/11/2021 12:00PM',
                                textColor: AppColors.gray,
                                fontSize: 10.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              } else {
                return SupportedHour();
              }
            },
          )
        ],
      ),
    );
  }
}
