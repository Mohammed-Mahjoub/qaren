import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qaren/screens/app/store/store_screen.dart';
import 'package:qaren/widgets/qaren_gradient_button.dart';
import 'package:qaren/widgets/qaren_store.dart';
import 'package:qaren/widgets/qaren_text_field.dart';

import '../../../../utils/app_colors.dart';
import '../../../../widgets/points_widget.dart';
import '../../../../widgets/promo_code.dart';
import '../../../../widgets/qaren_text.dart';

class LoyaltyScreen extends StatefulWidget {
  const LoyaltyScreen({Key? key}) : super(key: key);

  @override
  State<LoyaltyScreen> createState() => _LoyaltyScreenState();
}

class _LoyaltyScreenState extends State<LoyaltyScreen> {
  bool code = true;
  bool discount = false;

  late TextEditingController _amountController;
  late TextEditingController _idController;

  @override
  void initState() {
    super.initState();
    _amountController = TextEditingController();
    _idController = TextEditingController();
  }

  @override
  void dispose() {
    _amountController.dispose();
    _idController.dispose();
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
          title: 'Loyalty Point',
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
                child: InkWell(
                  onTap: () {
                    setState(() {
                      code = true;
                      discount = false;
                    });
                  },
                  child: QarenText(
                    title: 'My Point',
                    textColor: code ? AppColors.blue : AppColors.gray,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      code = false;
                      discount = true;
                    });
                  },
                  child: QarenText(
                    title: 'Stores',
                    textColor: discount ? AppColors.blue : AppColors.gray,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          SizedBox(height: 20.h),
          StatefulBuilder(
            builder: (context, setState) {
              if (code) {
                return const PointsWidget();
              } else {
                return Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'images/loyalty.svg',
                            height: 60.h,
                            width: 40.w,
                          ),
                          SizedBox(width: 15.w),
                          Column(
                            children: [
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
                            ],
                          ),
                          SizedBox(width: 15.w),
                          Expanded(
                            child: QarenText(
                              title: 'You can redeem each point for one cent',
                              textAlign: TextAlign.start,
                              textColor: AppColors.semiBlack,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: QarenText(
                        title:
                            'You can redeem your points with products from stores below, at first choose how much points do you want to redeem, then use store code',
                        textAlign: TextAlign.start,
                        textColor: AppColors.gray,
                        fontSize: 13.sp,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: QarenText(
                          title: 'Stores',
                          textAlign: TextAlign.start,
                          textColor: AppColors.semiBlack,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    PromoCode(text: 'Use Point',onPress: (){
                      _showNewStoreDialog(context);
                    }),
                  ],
                );
              }
            },
          )
        ],
      ),
    );
  }

  Future<void> _showDoneCodeDialog(BuildContext context) async {
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
                    const CircleAvatar(radius: 15,backgroundColor: Color(0XFF689DDE),child: Center(child: Icon(Icons.check,color: Colors.white,)),),
                    SizedBox(height: 5.h),
                    QarenText(
                      title: 'Store Code',
                      textAlign: TextAlign.center,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w600,
                      textColor: Colors.black,
                    ),
                    QarenText(
                      title: 'you can use this code 87374we to buy products from store name here with our points',
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

  Future<void> _showNewStoreDialog(BuildContext context) async {
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
                      title: 'Insert Point Amount',
                      textColor: AppColors.semiBlack,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(height: 10.h),
                    QarenText(
                      title: 'please insert points amount to get store\'s code',
                      textColor: AppColors.gray,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(height: 20.h),
                    QarenTextField(
                      label: 'Insert points amount',
                      controller: _amountController,
                      textInputType: TextInputType.number,
                    ),
                    SizedBox(height: 10.h),
                    QarenTextField(
                      label: 'Insert Store ID',
                      controller: _idController,
                      textInputType: TextInputType.number,
                    ),
                    SizedBox(height: 30.h),
                    QarenGradientButton(
                      title: 'Confirm',
                      textColor: Colors.white,
                      onPressed: () {
                        _showDoneCodeDialog(context);
                      },
                    ),
                  ],
                ),
              );
            },
          );
        });
  }
}
