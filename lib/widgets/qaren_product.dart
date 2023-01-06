import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qaren/utils/app_colors.dart';
import 'package:qaren/widgets/qaren_text.dart';

class QarenProduct extends StatelessWidget {
  const QarenProduct({
    Key? key,
    required this.name,
    required this.superMarket,
    required this.tradeMark,
    required this.price,
    required this.addToCart,
    required this.favorite,
  }) : super(key: key);

  final String name;
  final String superMarket;
  final String tradeMark;
  final double price;
  final void Function() addToCart;
  final void Function() favorite;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.w),
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.only(bottom: 10.h),
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            margin: EdgeInsetsDirectional.only(start: 5.h, top: 5.h, end: 20.w),
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
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 5.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          QarenText(
                            title: name,
                            textColor: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                          QarenText(
                            title: superMarket,
                            textColor: Colors.black,
                            fontSize: 8,
                            fontWeight: FontWeight.w500,
                          ),
                          QarenText(
                            title: tradeMark,
                            textColor: AppColors.gray,
                            fontSize: 8,
                            fontWeight: FontWeight.w500,
                          ),
                          RatingBar.builder(
                            initialRating: 3,
                            itemSize: 12.h,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding:
                                EdgeInsets.symmetric(horizontal: 1.0.w),
                            itemBuilder: (context, _) => SvgPicture.asset(
                              'images/ic_rating_star.svg',
                            ),
                            onRatingUpdate: (rating) {},
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 24.w,
                      height: 24.h,
                      decoration: BoxDecoration(
                        color: AppColors.blue,
                        borderRadius: BorderRadius.circular(12.w),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        color: Colors.white,
                        icon: const Icon(Icons.share),
                        iconSize: 10.w,
                        padding: EdgeInsets.zero,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15.h),
                Row(
                  children: [
                    QarenText(
                      title: '$price \$',
                      textColor: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: addToCart,
                      child: SvgPicture.asset(
                        'images/ic_bag.svg',
                        width: 24.w,
                        height: 24.h,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    SizedBox(width: 5.w),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
