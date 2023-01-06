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
import '../../../../widgets/qaren_product.dart';
import '../../../../widgets/qaren_result_detail.dart';
import '../../../../widgets/qaren_text.dart';

class QarenResultScreen extends StatefulWidget {
  const QarenResultScreen({Key? key}) : super(key: key);

  @override
  State<QarenResultScreen> createState() => _QarenResultScreenState();
}

class _QarenResultScreenState extends State<QarenResultScreen> {
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
          title: 'Result Details',
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
          SizedBox(height: 10.h),
          QarenText(
            title: 'Store Name',
            textAlign: TextAlign.start,
            fontWeight: FontWeight.w400,
            fontSize: 17.sp,
            textColor: AppColors.semiBlack,
          ),
          SizedBox(height: 10.h),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: 3,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: 10.h,
              crossAxisSpacing: 16.w,
              childAspectRatio: 343.w / 155.h,
            ),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(2),
                child: InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, '/qaren_product_screen');
                  },
                  child: QarenResultDetail(
                    name: 'Product name here',
                    superMarket: 'Super market name',
                    tradeMark: 'Trade mark - Country',
                    price: 50,
                    onPress: () {},
                  ),
                ),
              );
            },
          ),
          Row(
            children: [
              QarenText(
                title: 'Total(9 items):',
                fontSize: 17.sp,
                fontWeight: FontWeight.w400,
                textColor: AppColors.blue,
              ),
              const Spacer(),
              QarenText(
                title: '212.00\$',
                fontSize: 17.sp,
                fontWeight: FontWeight.w400,
                textColor: AppColors.blue,
              ),
            ],
          ),
          SizedBox(height: 20.h),
          QarenGradientButton(
            title: 'Add to cart',
            fontSize: 17,
            textColor: Colors.white,
            onPressed: () {},
          ),
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
                    const CircleAvatar(
                      radius: 15,
                      backgroundColor: Color(0XFF689DDE),
                      child: Center(
                          child: Icon(
                        Icons.check,
                        color: Colors.white,
                      )),
                    ),
                    SizedBox(height: 5.h),
                    QarenText(
                      title: 'Store Code',
                      textAlign: TextAlign.center,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w600,
                      textColor: Colors.black,
                    ),
                    QarenText(
                      title:
                          'you can use this code 87374we to buy products from store name here with our points',
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
