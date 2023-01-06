import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qaren/utils/app_colors.dart';
import 'package:qaren/widgets/qaren_text.dart';
import 'dart:math' as math;

class SmallQarenProduct extends StatelessWidget {
  const SmallQarenProduct({
    Key? key,
    required this.name,
    required this.info,
    required this.addToCart,
    required this.favorite,
    required this.onPressed,
    this.startPrice,
    this.endPrice,
    this.fixedPrice,
    this.hasOffer = false,
    this.hasSale = false,
    this.isFixedProduct = false,
    this.offerColor = Colors.blueAccent,
    this.saleColor = Colors.blueAccent,
    this.discountPercentage = 0,
    this.salePercentage = 0,
  }) : super(key: key);

  final String name;
  final String info;
  final String? startPrice;
  final String? endPrice;
  final String? fixedPrice;
  final void Function() addToCart;
  final void Function() favorite;
  final void Function() onPressed;
  final bool hasOffer;
  final bool hasSale;
  final bool isFixedProduct;
  final Color offerColor;
  final Color saleColor;
  final double discountPercentage;
  final double salePercentage;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5.h),
        // padding: EdgeInsets.all(10.w),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 0),
              blurRadius: 6,
              color: Colors.black.withAlpha(21),
            ),
          ],
        ),
        child: Stack(
          children: [
            Visibility(
              visible: hasOffer,
              child: Container(
                padding: const EdgeInsetsDirectional.only(top: 9, start: 6),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(100),
                    topLeft: Radius.circular(10),
                  ),
                  color: offerColor,
                  shape: BoxShape.rectangle,
                ),
                height: 55.h,
                width: 55.w,
                child: Transform.rotate(
                  angle: -math.pi / 4,
                  child: Column(
                    children: [
                      const QarenText(
                        title: 'Qaeren offer',
                        fontSize: 7,
                        fontWeight: FontWeight.w500,
                        textColor: Colors.white,
                      ),
                      SizedBox(height: 3.h),
                      const QarenText(
                        title: '50%',
                        fontSize: 9,
                        fontWeight: FontWeight.w500,
                        textColor: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Visibility(
              visible: hasSale,
              child: Transform.rotate(
                angle: -math.pi / 4,
                child: Container(
                  margin: EdgeInsetsDirectional.only(end: 35.w, bottom: 35.h),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: saleColor,
                    shape: BoxShape.rectangle,
                  ),
                  height: 16.h,
                  width: 63.w,
                  child: Column(
                    children: const [
                      QarenText(
                        title: 'Sale 25%',
                        height: 1.7,
                        fontSize: 9,
                        fontWeight: FontWeight.w500,
                        textColor: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional.topEnd,
              child: Padding(
                padding: EdgeInsetsDirectional.only(top: 5.h, end: 5.w),
                child: CircleAvatar(
                  backgroundColor: AppColors.blue,
                  radius: 12.w,
                  child: Icon(
                    Icons.share,
                    color: Colors.white,
                    size: 12.h,
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsetsDirectional.only(top: 15.h),
                  padding: const EdgeInsets.all(10),
                  width: 72.w,
                  height: 72.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: AppColors.darkBlue,
                      width: 0.2,
                    ),
                  ),
                  child: Image.asset('images/center_logo.png'),
                ),
                SizedBox(height: 10.w),
                Text(
                  name,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    color: AppColors.semiBlack,
                    fontSize: 10.sp,
                  ),
                ),
                Text(
                  info,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    color: AppColors.gray,
                    fontSize: 8.sp,
                  ),
                ),
                SizedBox(height: 2.h),
                RatingBar.builder(
                  initialRating: 3,
                  itemSize: 14.h,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                  itemBuilder: (context, _) => SvgPicture.asset(
                    'images/ic_rating_star.svg',
                  ),
                  onRatingUpdate: (rating) {},
                ),
                const SizedBox(height: 3),
                Visibility(
                  visible: isFixedProduct,
                  replacement: Center(
                    child: QarenText(
                      title: '$fixedPrice \$',
                      fontWeight: FontWeight.w600,
                      textColor: AppColors.semiBlack,
                      fontSize: 12,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      QarenText(
                        title: '$startPrice \$ - ',
                        fontWeight: FontWeight.w600,
                        textColor: AppColors.semiBlack,
                        fontSize: 12,
                      ),
                      QarenText(
                        title: '$endPrice \$',
                        fontWeight: FontWeight.w600,
                        textColor:
                            hasOffer ? AppColors.gray : AppColors.semiBlack,
                        fontSize: 12,
                        textDecoration: hasOffer
                            ? TextDecoration.lineThrough
                            : TextDecoration.none,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15.h),
                Align(
                  alignment: AlignmentDirectional.bottomEnd,
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(start: 5.w, end: 5.w),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Visibility(
                          visible: hasOffer || hasSale,
                          child: const QarenText(
                            title: 'Dye : 12/11/2023',
                            fontSize: 8,
                            height: 0.1,
                            textColor: Colors.black,
                          ),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: addToCart,
                          child: SvgPicture.asset(
                            'images/ic_bag.svg',
                            width: 24.w,
                            height: 24.h,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        SizedBox(width: 10.w),
                        InkWell(
                          onTap: favorite,
                          child: SvgPicture.asset(
                            'images/ic_favorite.svg',
                            width: 24.w,
                            height: 24.h,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
