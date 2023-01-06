import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qaren/widgets/qaren_gradient_button.dart';
import 'package:qaren/widgets/qaren_text_field.dart';

import '../../../../utils/app_colors.dart';
import '../../../../widgets/qaren_text.dart';

class MyOrderScreen extends StatefulWidget {
  const MyOrderScreen({Key? key}) : super(key: key);

  @override
  State<MyOrderScreen> createState() => _MyOrderScreenState();
}

class _MyOrderScreenState extends State<MyOrderScreen> {
  late TextEditingController _rate;

  @override
  void initState() {
    super.initState();
    _rate = TextEditingController();
  }

  @override
  void dispose() {
    _rate.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: QarenText(
          title: 'My Orders',
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
          SizedBox(height: 10.h),
          Row(
            children: [
              Expanded(
                child: QarenText(
                  title: 'In progress',
                  textColor: AppColors.blue,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Expanded(
                child: QarenText(
                  title: 'Completed',
                  textColor: AppColors.gray,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          ListView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 25.h),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(bottom: 10.h),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0XFFFCFCFC),
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0XFFEBF4FF),
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10.h, horizontal: 15.w),
                          child: Row(
                            children: [
                              Expanded(
                                child: QarenText(
                                  title: 'ETA  Wed, Jun 16 2:00PM',
                                  textAlign: TextAlign.start,
                                  fontSize: 12.sp,
                                  textColor: AppColors.red,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  _showCancelDialog(context);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5.r),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Center(
                                      child: QarenText(
                                        title: 'Cancel',
                                        textColor: AppColors.semiBlack,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10.w),
                              InkWell(
                                onTap: () {
                                  _showRateDialog(context);
                                },
                                child: const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Row(
                        children: [
                          Image(
                            image: const AssetImage('images/71q1bg+ERCL.png'),
                            width: 43.w,
                            height: 51.h,
                          ),
                          SizedBox(width: 5.w),
                          QarenText(
                            title: '1 X  Ariel Original Detergent Po...',
                            textColor: AppColors.semiBlack,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          const Image(
                            image: AssetImage('images/71q1bg+ERCL.png'),
                            width: 43,
                            height: 51,
                          ),
                          SizedBox(width: 5.w),
                          QarenText(
                            title: '1 X  Ariel Original Detergent Po...',
                            textColor: AppColors.semiBlack,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      ),
                      const Divider(),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                QarenText(
                                  title: 'ordered on',
                                  textColor: AppColors.semiBlack,
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                                QarenText(
                                  title: 'Wed, Jun 16 12:35PM',
                                  textColor: AppColors.gray,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ],
                            ),
                            const Spacer(),
                            QarenText(
                              title: '2000 \$',
                              textColor: AppColors.semiBlack,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                            ),
                            const Spacer(),
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, '/track_screen');
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: AppColors.red, width: 1),
                                  borderRadius: BorderRadius.circular(5.r),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Center(
                                    child: QarenText(
                                      title: 'Track order',
                                      textColor: AppColors.red,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Future<void> _showCancelDialog(BuildContext context) async {
    showDialog(
        context: context,
        barrierColor: Colors.white60,
        builder: (_) {
          return StatefulBuilder(
            builder: (context, setState) {
              return AlertDialog(
                backgroundColor: Colors.white,
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                content: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          height: 20.h,
                          width: 20.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5.r),
                            border: Border.all(
                              color: Colors.black,
                              width: 1.w,
                            ),
                          ),
                          child: Center(
                            child: QarenText(
                              title: 'x',
                              textColor: Colors.black,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30.h),
                    QarenText(
                      title: 'Cancel Order',
                      textAlign: TextAlign.center,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w600,
                      textColor: Colors.black,
                    ),
                    QarenText(
                      title: 'are you sure you want to cancel this order',
                      textAlign: TextAlign.center,
                      fontSize: 13.sp,
                      textColor: const Color(0XFF979696),
                    ),
                    SizedBox(height: 25.h),
                    QarenGradientButton(
                      title: 'Confirm',
                      fontSize: 17,
                      textColor: Colors.white,
                      buttonColor: const Color(0XFF689DDE),
                      onPressed: () {
                        _showDoneCancelDialog(context);
                      },
                    ),
                  ],
                ),
              );
            },
          );
        });
  }

  Future<void> _showDoneCancelDialog(BuildContext context) async {
    showDialog(
        context: context,
        barrierColor: Colors.white60,
        builder: (_) {
          return StatefulBuilder(
            builder: (context, setState) {
              return AlertDialog(
                backgroundColor: Colors.white,
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                content: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          height: 20.h,
                          width: 20.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5.r),
                            border: Border.all(
                              color: Colors.black,
                              width: 1.w,
                            ),
                          ),
                          child: Center(
                            child: QarenText(
                              title: 'x',
                              textColor: Colors.black,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.h),
                    CircleAvatar(
                      radius: 15.r,
                      backgroundColor: const Color(0XFF689DDE),
                      child: const Center(
                          child: Icon(
                        Icons.check,
                        color: Colors.white,
                      )),
                    ),
                    QarenText(
                      title: 'Order Canceled',
                      textAlign: TextAlign.center,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w600,
                      textColor: Colors.black,
                    ),
                    QarenText(
                      title: 'you can order has been canceled successfully ',
                      textAlign: TextAlign.center,
                      fontSize: 13.sp,
                      textColor: const Color(0XFF979696),
                    ),
                  ],
                ),
              );
            },
          );
        });
  }

  Future<void> _showRateDialog(BuildContext context) async {
    showDialog(
        context: context,
        barrierColor: Colors.white60,
        builder: (_) {
          return StatefulBuilder(
            builder: (context, setState) {
              return AlertDialog(
                backgroundColor: Colors.white,
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                content: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(),
                        QarenText(
                          title: 'Order Canceled',
                          textAlign: TextAlign.center,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w600,
                          textColor: Colors.black,
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 20.h,
                            width: 20.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5.r),
                              border: Border.all(
                                color: Colors.black,
                                width: 1.w,
                              ),
                            ),
                            child: Center(
                              child: QarenText(
                                title: 'x',
                                textColor: Colors.black,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 25.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Container(
                        height: 58.h,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(29.r)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset('images/r1.png'),
                              Image.asset('images/r2.png'),
                              Image.asset('images/r3.png'),
                              Image.asset('images/r4.png'),
                              Image.asset('images/r5.png'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 25.h),
                    QarenTextField(label: 'Write Message', controller: _rate),
                    SizedBox(height: 25.h),
                    QarenGradientButton(
                      title: 'Send',
                      onPressed: () {
                        Navigator.pushNamed(context, '/order_details_screen');
                      },
                      textColor: Colors.white,
                    ),
                  ],
                ),
              );
            },
          );
        });
  }
}
