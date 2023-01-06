import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qaren/widgets/qaren_drop_down.dart';
import 'package:qaren/widgets/qaren_gradient_button.dart';
import 'package:qaren/widgets/qaren_text.dart';

import '../../../../utils/app_colors.dart';
import '../../../../widgets/qaren_bordered_button.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: QarenText(
          title: 'Setting & Profile',
          textColor: Colors.white,
          fontSize: 17.sp,
          fontWeight: FontWeight.w500,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: 224.h,
              ),
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 162.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.h),
                      gradient: const LinearGradient(
                        begin: AlignmentDirectional.centerStart,
                        end: AlignmentDirectional.centerEnd,
                        colors: [
                          AppColors.blue,
                          AppColors.darkBlue,
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.only(end: 16.w, start: 16.w),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, '/my_order_screen');
                            },
                            child: Container(
                              height: 100.h,
                              width: 100.w,
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 0),
                                  blurRadius: 20,
                                  color: Colors.black.withOpacity(0.08),
                                )
                              ], shape: BoxShape.circle, color: Colors.white),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset('images/bus.svg'),
                                  SizedBox(height: 10.h),
                                  QarenText(
                                    title: 'My Orders',
                                    textColor: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.sp,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Spacer(),
                          InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, '/promo_code_screen');
                            },
                            child: Container(
                              height: 100.h,
                              width: 100.w,
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 0),
                                  blurRadius: 20,
                                  color: Colors.black.withOpacity(0.08),
                                )
                              ], shape: BoxShape.circle, color: Colors.white),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset('images/code.svg'),
                                  SizedBox(height: 10.h),
                                  QarenText(
                                    title: 'Promo Codes',
                                    textColor: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.sp,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Spacer(),
                          InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, '/loyalty_screen');
                            },
                            child: Container(
                              height: 100.h,
                              width: 100.w,
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 0),
                                  blurRadius: 20,
                                  color: Colors.black.withOpacity(0.08),
                                )
                              ], shape: BoxShape.circle, color: Colors.white),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset('images/loyalty.svg'),
                                  SizedBox(height: 10.h),
                                  QarenText(
                                    title: 'Loyalty Points',
                                    textColor: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.sp,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(start: 16.h, end: 16.h),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/my_profile_screen');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset('images/profile.svg'),
                        SizedBox(
                          width: 11.w,
                        ),
                        QarenText(
                          title: 'My Profile',
                          textColor: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/user_manual_screen');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset('images/manuale.svg'),
                        SizedBox(
                          width: 11.w,
                        ),
                        QarenText(
                          title: 'User\'s Manual',
                          textColor: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/statistics_screen');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset('images/statistic.svg'),
                        SizedBox(
                          width: 11.w,
                        ),
                        QarenText(
                          title: 'Statistics',
                          textColor: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/about_us_screen');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset('images/about.svg'),
                        SizedBox(
                          width: 11.w,
                        ),
                        QarenText(
                          title: 'About US',
                          textColor: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/privacy_policy_screen');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset('images/privacy.svg'),
                        SizedBox(
                          width: 11.w,
                        ),
                        QarenText(
                          title: 'Privacy policy',
                          textColor: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                          context, '/terms_and_conditions_screen');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset('images/terms.svg'),
                        SizedBox(
                          width: 11.w,
                        ),
                        QarenText(
                          title: 'Terms & Conditions',
                          textColor: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  InkWell(
                    onTap: () {
                      _showContactDialog(context);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset('images/contact.svg'),
                        SizedBox(
                          width: 11.w,
                        ),
                        QarenText(
                          title: 'Contact us',
                          textColor: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/change_language_screen');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset('images/language.svg'),
                        SizedBox(width: 11.w),
                        QarenText(
                          title: 'Change Language',
                          textColor: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/change_country_screen');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset('images/country.svg'),
                        SizedBox(
                          width: 11.w,
                        ),
                        QarenText(
                          title: 'Change Country',
                          textColor: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/faq_screen');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('images/faq.png'),
                        SizedBox(
                          width: 11.w,
                        ),
                        QarenText(
                          title: 'FAQ',
                          textColor: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/rate_screen');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset('images/rate.svg'),
                        SizedBox(
                          width: 11.w,
                        ),
                        QarenText(
                          title: 'Rate Us',
                          textColor: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/referrel_screen');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset('images/referral.svg'),
                        SizedBox(
                          width: 11.w,
                        ),
                        QarenText(
                          title: 'Referral',
                          textColor: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  QarenBorderedButton(
                    title: 'Sign Out',
                    onPressed: () => Navigator.pop(context),
                    backgroundColor: Colors.red,
                    textColor: Colors.black,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showContactDialog(BuildContext context) async {
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
                      children: [
                        Expanded(
                          child: Align(
                            alignment: Alignment.center,
                            child: QarenText(
                              title: 'Contact Us',
                              textColor: Colors.black,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
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
                      ],
                    ),
                    SizedBox(height: 30.h),
                    QarenText(
                      title: 'Define your request',
                      textAlign: TextAlign.center,
                      fontSize: 13.sp,
                      textColor: Colors.black,
                    ),
                    SizedBox(height: 15.h),
                    const QarenDropDown<int>(
                      marginTop: 0,
                      hint: 'Choose Country',
                      items: [],
                    ),
                    SizedBox(height: 30.h),
                    QarenGradientButton(
                      title: 'Save',
                      onPressed: () {
                        Navigator.pushNamed(context, '/contact_us_screen');
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
