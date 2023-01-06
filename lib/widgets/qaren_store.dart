import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qaren/utils/app_colors.dart';
import 'package:qaren/widgets/qaren_text.dart';

class QarenStore extends StatelessWidget {
  const QarenStore({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
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
                        CircleAvatar(
                          radius: 30.h,
                          backgroundColor: Colors.white,
                        ),
                        SizedBox(width: 20.w),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            QarenText(
                              title: 'Super Market Name',
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                            QarenText(
                              title: '5 Km away',
                              fontWeight: FontWeight.normal,
                              fontSize: 7,
                            ),
                            QarenText(
                              title: 'foodstuffs - Detergents - Dairies',
                              fontWeight: FontWeight.normal,
                              fontSize: 11,
                            ),
                            QarenText(
                              title: 'Alquds - Location Here location here',
                              fontWeight: FontWeight.normal,
                              fontSize: 9,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  clipBehavior: Clip.antiAlias,
                  width: 40.w,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadiusDirectional.only(
                      topStart: Radius.circular(20),
                      bottomStart: Radius.circular(20),
                    ),
                    color: Colors.black.withOpacity(0.26),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 25.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            SvgPicture.asset(
                              'images/ic_preparing.svg',
                              color: Colors.white,
                            ),
                            const QarenText(
                              title: 'Preparing',
                              textColor: Colors.white,
                              fontSize: 7,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SvgPicture.asset(
                              'images/ic_delivery.svg',
                              color: Colors.white,
                            ),
                            const QarenText(
                              title: 'Delivery',
                              textColor: Colors.white,
                              fontSize: 7,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            RatingBar.builder(
                              initialRating: 3,
                              itemSize: 6.h,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding: EdgeInsets.symmetric(
                                horizontal: 1.0.w,
                              ),
                              itemBuilder: (context, _) => SvgPicture.asset(
                                'images/ic_small_star_filled.svg',
                              ),
                              maxRating: 5,
                              onRatingUpdate: (rating) {},
                            ),
                            const QarenText(
                              title: 'Reviews',
                              textColor: AppColors.blue,
                              fontSize: 7,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
