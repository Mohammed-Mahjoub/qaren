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
import '../../../../widgets/section_title.dart';
import '../../../../widgets/small_qarent_product.dart';
import '../../details/product_details_screen.dart';
import '../bn_screen/products_screen.dart';

class MyCartScreen extends StatefulWidget {
  const MyCartScreen({Key? key}) : super(key: key);

  @override
  State<MyCartScreen> createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
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
          title: 'My Cart',
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
                const QarenText(
                  title: "Store Name",
                  textColor: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  textAlign: TextAlign.start,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/note_screen');
                  },
                  icon: SvgPicture.asset(
                    'images/cart_storename.svg',
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: const QarenText(
              title: "Category",
              textColor: Colors.black,
              fontSize: 14,
              textAlign: TextAlign.start,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 1,
              itemBuilder: (context, index) {
                return QarenProductCart(
                  name: 'Product name here',
                  superMarket: 'Super market name',
                  tradeMark: 'Trade mark - Country',
                  price: 25.00,
                  delete: () {},
                  online: index % 2 == 0,
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: const QarenText(
              title: "Category",
              textColor: Colors.black,
              fontSize: 14,
              textAlign: TextAlign.start,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 1,
              itemBuilder: (context, index) {
                return QarenProductCart(
                  name: 'Product name here',
                  superMarket: 'Super market name',
                  tradeMark: 'Trade mark - Country',
                  price: 25.00,
                  delete: () {},
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: const QarenText(
              title: "Choose Service :",
              textColor: Colors.black,
              fontSize: 14,
              textAlign: TextAlign.start,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Container(
              constraints: BoxConstraints(maxHeight: 30.h),
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'images/mask_group_24.svg',
                        ),
                      ),
                      const QarenText(
                        title: "Self Service",
                        textColor: AppColors.text,
                        fontSize: 12,
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'images/note.svg',
                        ),
                      ),
                      const QarenText(
                        title: "Preparing - Self Pickup",
                        textColor: AppColors.text,
                        fontSize: 12,
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'images/delivary.svg',
                        ),
                      ),
                      const QarenText(
                        title: "Delivery",
                        textColor: AppColors.text,
                        fontSize: 12,
                        textAlign: TextAlign.start,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: const QarenText(
              title: "Store Name",
              textColor: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              textAlign: TextAlign.start,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: const QarenText(
              title: "Catagorie",
              textColor: Colors.black,
              fontSize: 14,
              textAlign: TextAlign.start,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 1,
              itemBuilder: (context, index) {
                return QarenProductCart(
                  name: 'Product name here',
                  superMarket: 'Super market name',
                  tradeMark: 'Trade mark - Country',
                  price: 25.00,
                  delete: () {},
                  online: index % 2 == 0,
                );
              },
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
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, '/payments_method_screen');
            },
            child: Container(
              margin: EdgeInsetsDirectional.only(bottom: 20.h),
              height: 35.h,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: AlignmentDirectional.topStart,
                  end: AlignmentDirectional.centerEnd,
                  colors: [
                    AppColors.blue,
                    AppColors.darkBlue,
                  ],
                ),
              ),
              child: const Center(
                child: QarenText(
                  title: "Continue",
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: const QarenText(
              title: "Receipt",
              textColor: AppColors.darkBlue,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              textAlign: TextAlign.start,
            ),
          ),
          const Divider(
            height: 2,
            color: AppColors.divider,
          ),
          DottedBorder(
            color: AppColors.border,
            strokeWidth: 1,
            dashPattern: const [5, 5],
            child: Container(
              margin: const EdgeInsets.only(right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'images/group_13333.svg',
                        ),
                      ),
                      const QarenText(
                        title: "Promo Code",
                        textColor: AppColors.text,
                        fontSize: 12,
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    height: 35.h,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: AlignmentDirectional.topStart,
                          end: AlignmentDirectional.centerEnd,
                          colors: [
                            AppColors.blue,
                            AppColors.darkBlue,
                          ],
                        ),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                          topRight: Radius.circular(5),
                          topLeft: Radius.circular(5),
                        )),
                    child: const Center(
                      child: QarenText(
                        title: "Add",
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          DottedBorder(
            color: AppColors.border,
            strokeWidth: 1,
            dashPattern: const [5, 5],
            child: Container(
              margin: const EdgeInsets.only(right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'images/group_13333.svg',
                        ),
                      ),
                      const QarenText(
                        title: "Promo Code",
                        textColor: AppColors.text,
                        fontSize: 12,
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    height: 35.h,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: AlignmentDirectional.topStart,
                          end: AlignmentDirectional.centerEnd,
                          colors: [
                            AppColors.blue,
                            AppColors.darkBlue,
                          ],
                        ),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                          topRight: Radius.circular(5),
                          topLeft: Radius.circular(5),
                        )),
                    child: const Center(
                      child: QarenText(
                        title: "Add",
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
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
          QarenTextField(
            label: '',
            controller: _noteController,
            textInputType: TextInputType.text,
            suffixIcon: 'note',
            minLines: 4,
            maxLines: 4,
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
