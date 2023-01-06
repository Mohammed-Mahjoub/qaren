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
import '../../../../widgets/promo_code.dart';
import '../../../../widgets/qaren_text.dart';

class PromoCodeScreen extends StatefulWidget {
  const PromoCodeScreen({Key? key}) : super(key: key);

  @override
  State<PromoCodeScreen> createState() => _PromoCodeScreenState();
}

class _PromoCodeScreenState extends State<PromoCodeScreen> {
  bool code = true;
  bool discount = false;

  late TextEditingController _nameController;
  late TextEditingController _idController;
  late TextEditingController _discountController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _idController = TextEditingController();
    _discountController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _idController.dispose();
    _discountController.dispose();
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
          title: 'Promo Code',
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
                    title: 'Promo Codes',
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
                    title: 'Fiat Discount',
                    textColor: discount ? AppColors.blue : AppColors.gray,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: InkWell(
              onTap: () {
                _showNewStoreDialog(context);
              },
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0XFF689DDE)),
                  borderRadius: BorderRadius.circular(25.r),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 13.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.add, color: Color(0XFF689DDE)),
                      SizedBox(width: 5.w),
                      QarenText(
                        title: 'Add New Store',
                        fontSize: 17.sp,
                        textColor: const Color(0XFF689DDE),
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20.h),
          StatefulBuilder(
            builder: (context, setState) {
              if (code) {
                return  PromoCode(onPress: (){},);
              } else {
                return GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  itemCount: 10,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 10.h,
                    crossAxisSpacing: 15.w,
                    childAspectRatio: 359.w / 150.h,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.w),
                      ),
                      child: Stack(
                        children: [
                          Image.network(
                            'https://qph.cf2.quoracdn.net/main-qimg-b642334ba098c5209c2c414004875f77-lq',
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: AlignmentDirectional.topCenter,
                                end: AlignmentDirectional.bottomCenter,
                                colors: [
                                  Colors.white.withOpacity(0),
                                  Colors.black,
                                ],
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.only(
                                    start: 10.w,
                                    bottom: 10.h,
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      const Image(
                                        image: AssetImage('images/poke.png'),
                                        height: 60,
                                        width: 60,
                                      ),
                                      SizedBox(width: 20.w),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          QarenText(
                                            title: 'Super Market Name',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14.sp,
                                          ),
                                          QarenText(
                                            title: 'Discount 25%',
                                            fontWeight: FontWeight.w400,
                                            textColor: AppColors.blue,
                                            fontSize: 14.sp,
                                          ),
                                        ],
                                      ),
                                      const Spacer(),
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.delete_outlined,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
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
                    QarenText(
                      title: 'Store Code',
                      textAlign: TextAlign.center,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w600,
                      textColor: Colors.black,
                    ),
                    QarenText(
                      title: 'A request to add a new store has been sent',
                      textAlign: TextAlign.center,
                      fontSize: 13.sp,
                      textColor: const Color(0XFF979696),
                    ),
                    SizedBox(height: 25.h),
                    QarenGradientButton(
                      title: 'Save',
                      textColor: Colors.white,
                      onPressed: () {

                      },
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
                    Row(
                      children: [
                        Expanded(
                          child: QarenText(
                            title: 'Add Store',
                            textColor: Colors.black,
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w600,
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
                      title: 'please insert Flat Discount To Add Store',
                      textColor: AppColors.gray,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(height: 20.h),
                    QarenTextField(
                      label: 'Store name here',
                      controller: _nameController,
                      textInputType: TextInputType.text,
                    ),
                    SizedBox(height: 10.h),
                    QarenTextField(
                      label: 'Insert User ID In Store',
                      controller: _idController,
                      textInputType: TextInputType.number,
                    ),
                    SizedBox(height: 10.h),
                    QarenTextField(
                      label: 'Insert Flat Discount',
                      controller: _discountController,
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
