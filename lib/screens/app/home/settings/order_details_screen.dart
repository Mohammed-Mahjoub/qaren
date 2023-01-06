import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qaren/utils/app_colors.dart';
import 'package:qaren/widgets/qaren_gradient_button.dart';
import 'package:qaren/widgets/qaren_product_cart.dart';
import 'package:qaren/widgets/qaren_text.dart';
import 'package:qaren/widgets/qaren_text_field.dart';

import '../../../../widgets/qaren_product.dart';
import '../../../../widgets/qaren_product_cart2.dart';
import '../../../../widgets/section_title.dart';
import '../../../../widgets/small_qarent_product.dart';
import '../../details/product_details_screen.dart';
import '../bn_screen/products_screen.dart';

class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({Key? key}) : super(key: key);

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  late TextEditingController _noteController;

  @override
  void initState() {
    super.initState();
    _noteController = TextEditingController();
  }

  @override
  void dispose() {
    _noteController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const QarenText(
          title: 'Order Details',
          textColor: AppColors.semiBlack,
          fontSize: 17,
          fontWeight: FontWeight.w400,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
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
        padding: EdgeInsets.symmetric(
          vertical: 10.h,
        ),
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                QarenText(
                  title: "Store ID : 5665956",
                  textColor: Colors.black,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                  textAlign: TextAlign.start,
                ),
                const Spacer(),
                QarenText(
                  title: "Orderd No : 5665956",
                  textColor: Colors.black,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
          SizedBox(height: 15.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: QarenText(
              title: "Store Name",
              textColor: Colors.black,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(height: 5.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: (context, index) {
                return QarenProductCart2(
                  name: 'Product name here',
                  superMarket: 'Super market name',
                  tradeMark: 'Trade mark - Country',
                  price: 25.00,
                  online: index % 2 == 0,
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: QarenText(
              title: 'Receipt',
              textAlign: TextAlign.start,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              textColor: const Color(0XFF5745DE),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.w),
                  color: AppColors.grayBackGround),
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        QarenText(
                          title: "Product name",
                          textColor: Colors.black,
                          fontSize: 12,
                        ),
                        QarenText(
                          title: "25.00\$",
                          textColor: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ]),
                  SizedBox(height: 5.h),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        QarenText(
                          title: "Product name",
                          textColor: Colors.black,
                          fontSize: 12,
                        ),
                        Text(
                          "26.00\$",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        )
                      ]),
                  SizedBox(height: 5.h),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        QarenText(
                          title: "Subtotal",
                          textColor: Colors.black,
                          fontSize: 14,
                        ),
                        Text(
                          "26.00\$",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        )
                      ]),
                  SizedBox(height: 5.h),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        QarenText(
                          title: "Promo code",
                          textColor: AppColors.text,
                          fontSize: 14,
                        ),
                        Text(
                          "26.00\$",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        )
                      ]),
                  SizedBox(height: 5.h),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        QarenText(
                          title: " Loyalty point",
                          textColor: Colors.black,
                          fontSize: 14,
                        ),
                        QarenText(
                          title: "26.00\$",
                          textColor: Colors.black,
                          fontSize: 14,
                        ),
                      ]),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        QarenText(
                          title: "Flat discount",
                          textColor: AppColors.text,
                          fontSize: 14.sp,
                        ),
                        QarenText(
                          title: "26.00\$",
                          textColor: AppColors.text,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ]),
                  SizedBox(height: 5.h),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        QarenText(
                          title: " Saving amount",
                          textColor: Colors.black,
                          fontSize: 14.sp,
                        ),
                        Text(
                          "26.00\$",
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w400),
                        )
                      ]),
                  SizedBox(height: 5.h),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        QarenText(
                          title: "Total after discount",
                          textColor: Colors.black,
                          fontSize: 14.sp,
                        ),
                        Text(
                          "26.00\$",
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w400),
                        )
                      ]),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Preparing price",
                          style: TextStyle(fontSize: 14.sp),
                        ),
                        Text(
                          "26.00\$",
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w400),
                        )
                      ]),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Delivery price",
                          style: TextStyle(fontSize: 14.sp),
                        ),
                        Text(
                          "26.00\$",
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w400),
                        )
                      ]),
                  SizedBox(height: 5.h),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total(3 items)",
                          style: TextStyle(fontSize: 14.sp),
                        ),
                        Text(
                          "26.00\$",
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w400),
                        )
                      ]),
                  SizedBox(height: 5.h),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                QarenText(
                  title: "Total(9 items):",
                  textColor: AppColors.blue,
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
                QarenText(
                  title: "212.00\$",
                  textColor: AppColors.blue,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          ),

          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Align(
              alignment: Alignment.centerLeft,
              child: QarenText(
                title: "Write Note for store :",
                textColor: Colors.black,
                fontSize: 14.sp,
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: QarenTextField(
              label: 'Lorem ipsum dolor sit amet,\n consetetur sadipscing elitr, \nsed diam nonumy eirmod tempor invidunt ut labore et.',
              controller: _noteController,
              textInputType: TextInputType.text,
              readOnly: true,
              suffixIcon: 'note',
              minLines: 4,
              maxLines: 4,
            ),
          ),
          SizedBox(height: 10.h),
        ],
      ),
    );
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
                  padding:
                      EdgeInsets.symmetric(vertical: 20.h, horizontal: 16.w),
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
                        title: 'The Chepest',
                        fontSize: 17,
                        textColor: Colors.white,
                        buttonColor: AppColors.blue,
                        onPressed: () {},
                      ),
                      SizedBox(height: 10.h),
                      QarenGradientButton(
                        title: 'Categories',
                        fontSize: 17,
                        textColor: Colors.white,
                        buttonColor: AppColors.blue,
                        onPressed: () {},
                      ),
                      SizedBox(height: 10.h),
                      QarenGradientButton(
                        title: 'Row',
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
