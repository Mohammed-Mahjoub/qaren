import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qaren/screens/app/details/product_details_screen.dart';
import 'package:qaren/screens/app/home/bn_screen/products_screen.dart';
import 'package:qaren/utils/app_colors.dart';
import 'package:qaren/widgets/favorite_product_cart.dart';
import 'package:qaren/widgets/qaren_category.dart';
import 'package:qaren/widgets/qaren_text.dart';
import 'package:qaren/widgets/section_title.dart';
import 'package:qaren/widgets/small_qarent_product.dart';

import '../../../../widgets/qaren_product_cart2.dart';
import '../../../../widgets/qaren_store.dart';
import '../../store/store_screen.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  bool isProduct = true;
  bool online = true;
  bool isOffer = false;
  bool offline = false;
  bool isStore = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      children: [
        SizedBox(height: 10.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isProduct = true;
                      isOffer = false;
                      isStore = false;
                    });
                  },
                  child: Container(
                    height: 44.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: isProduct ? const Color(0XFF689DDE).withOpacity(0.4) : const Color(0XFFB8B7B7).withOpacity(0.4),
                    ),
                    child: Center(
                      child: QarenText(
                        title: 'Product',
                        textColor: isProduct ? AppColors.blue : AppColors.gray,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isProduct = false;
                      isOffer = true;
                      isStore = false;
                    });
                  },
                  child: Container(
                    height: 44.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: isOffer ? const Color(0XFF689DDE).withOpacity(0.4) : const Color(0XFFB8B7B7).withOpacity(0.4),
                    ),
                    child: Center(
                      child: QarenText(
                        title: 'Offers',
                        textColor: isOffer ? AppColors.blue : AppColors.gray,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isProduct = false;
                      isOffer = false;
                      isStore = true;
                    });
                  },
                  child: Container(
                    height: 44.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: isStore ? const Color(0XFF689DDE).withOpacity(0.4) : const Color(0XFFB8B7B7).withOpacity(0.4),
                    ),
                    child: Center(
                      child: QarenText(
                        title: 'Stores',
                        textColor: isStore ? AppColors.blue : AppColors.gray,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20.h),
        StatefulBuilder(
          builder: (context, setState) {
            if (isProduct) {
              return ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return FavoriteProductCart(
                    name: 'Product name here',
                    superMarket: 'Super market name',
                    tradeMark: 'Trade mark - Country',
                    price: 25.00,
                    online: index % 2 == 0,
                  );
                },
              );
            } else if (isOffer) {
              return Column(
                children: [
                  Container(
                    height: 130.h,
                    width: 324.w,
                    clipBehavior: Clip.antiAlias,
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
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            children: [
                              Image.asset(
                                'images/chips.png',
                                height: 100.h,
                                width: 100.w,
                              ),
                              SizedBox(width: 20.w),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    QarenText(
                                      title: 'Store Name',
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w400,
                                      textColor: Colors.white,
                                    ),
                                    QarenText(
                                      title: 'Offer Name here',
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w400,
                                      textColor: Colors.white,
                                    ),
                                    QarenText(
                                      title:
                                          'Lorem ipsum dolor sit amet, consetetur magna aliquyam erat, sed diam Reed more...',
                                      textAlign: TextAlign.start,
                                      fontSize: 9.sp,
                                      textColor: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 15.h,
                          right: 15.w,
                          child: SvgPicture.asset('images/lovee.svg'),
                        ),
                        Positioned(
                          bottom: 15.h,
                          right: 15.w,
                          child: QarenText(
                            title: 'Dye : 12/11/2023',
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            textColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Container(
                    height: 130.h,
                    width: 324.w,
                    clipBehavior: Clip.antiAlias,
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
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            children: [
                              Image.asset(
                                'images/chips.png',
                                height: 100.h,
                                width: 100.w,
                              ),
                              SizedBox(width: 20.w),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    QarenText(
                                      title: 'Store Name',
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w400,
                                      textColor: Colors.white,
                                    ),
                                    QarenText(
                                      title: 'Offer Name here',
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w400,
                                      textColor: Colors.white,
                                    ),
                                    QarenText(
                                      title:
                                          'Lorem ipsum dolor sit amet, consetetur magna aliquyam erat, sed diam Reed more...',
                                      textAlign: TextAlign.start,
                                      fontSize: 9.sp,
                                      textColor: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 15.h,
                          right: 15.w,
                          child: SvgPicture.asset('images/lovee.svg'),
                        ),
                        Positioned(
                          bottom: 15.h,
                          right: 15.w,
                          child: QarenText(
                            title: 'Dye : 12/11/2023',
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            textColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return FavoriteProductCart(
                        name: 'Product name here',
                        superMarket: 'Super market name',
                        tradeMark: 'Trade mark - Country',
                        price: 25.00,
                        online: index % 2 == 0,
                      );
                    },
                  ),
                ],
              );
            } else {
              return Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              online = true;
                              offline = false;
                            });
                          },
                          child: QarenText(
                            title: 'Online',
                            textColor: online ? AppColors.blue : AppColors.gray,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              online = false;
                              offline = true;
                            });
                          },
                          child: QarenText(
                            title: 'Offline',
                            textColor:
                                offline ? AppColors.blue : AppColors.gray,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  GridView.builder(
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
                      return QarenStore(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => StoreScreen(),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              );
            }
          },
        )
      ],
    );
  }
}
