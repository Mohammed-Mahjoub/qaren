import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qaren/utils/app_colors.dart';
import 'package:qaren/widgets/qaren_text.dart';

class QarenStoreInfo extends StatelessWidget {
  const QarenStoreInfo({
    Key? key,
    required this.name,
    required this.distance,
    required this.categories,
    required this.location,
    required this.addToCart,
    required this.favorite,
    this.online = false,
  }) : super(key: key);

  final String name;
  final String distance;
  final String categories;
  final String location;
  final bool online;
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
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Visibility(
                                visible: online,
                                child: Container(
                                  margin: EdgeInsetsDirectional.only(
                                    bottom: 3.h,
                                    end: 2.w,
                                  ),
                                  width: 10.w,
                                  height: 10.h,
                                  decoration: const BoxDecoration(
                                    color: Color(0xFF3AE957),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),

                              QarenText(
                                title: name,
                                textColor: Colors.black,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          ),
                          QarenText(
                            title: distance,
                            textColor: Colors.black,
                            fontSize: 7,
                            fontWeight: FontWeight.normal,
                          ),
                          QarenText(
                            title: categories,
                            textColor: Colors.black,
                            fontSize: 11,
                            fontWeight: FontWeight.normal,
                          ),
                          QarenText(
                            title: categories,
                            textColor: Colors.black,
                            fontSize: 9,
                            fontWeight: FontWeight.normal,
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
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
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
