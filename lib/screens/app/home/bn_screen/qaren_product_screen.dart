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

class QarenProductScreen extends StatefulWidget {
  const QarenProductScreen({Key? key}) : super(key: key);

  @override
  State<QarenProductScreen> createState() => _QarenProductScreenState();
}

class _QarenProductScreenState extends State<QarenProductScreen> {
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
          title: 'Qaren Product',
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
        actions: [
          IconButton(
            onPressed: () {
              _showFilterBottomSheet(context);
            },
            icon: SvgPicture.asset(
              'images/cartbar.svg',
            ),
          ),
        ],
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
                child: QarenResultDetail(
                  name: 'Product name here',
                  superMarket: 'Super market name',
                  tradeMark: 'Trade mark - Country',
                  price: 50,
                  onPress: () {},
                ),
              );
            },
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

  void _showFilterBottomSheet(BuildContext context) {
    showModalBottomSheet(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50.r),
          topRight: Radius.circular(50.r),
        ),
      ),
      backgroundColor: Colors.white.withOpacity(0.4),
      context: context,
      builder: (context) {
        return BottomSheet(
          backgroundColor: Colors.white.withOpacity(0.8),
          onClosing: () {},
          builder: (context) {
            return StatefulBuilder(
              builder: (context, setState) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h,horizontal: 16.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          const Spacer(),
                          QarenText(
                            title: 'Sort By',
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
                      SizedBox(height: 60.h),
                      QarenGradientButton(
                        title: 'Top Rated',
                        fontSize: 17,
                        textColor: Colors.white,
                        buttonColor: AppColors.blue,
                        onPressed: () {},
                      ),
                      SizedBox(height: 10.h),
                      QarenGradientButton(
                        title: 'Price',
                        fontSize: 17,
                        textColor: Colors.white,
                        buttonColor: AppColors.blue,
                        onPressed: () {},
                      ),
                      SizedBox(height: 10.h),
                      QarenGradientButton(
                        title: 'Distance',
                        fontSize: 17,
                        textColor: Colors.white,
                        buttonColor: AppColors.blue,
                        onPressed: () {},
                      ),
                    ],
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
