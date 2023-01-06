import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qaren/screens/app/home/bn_screen/products_screen.dart';
import 'package:qaren/utils/app_colors.dart';
import 'package:qaren/widgets/circular_social_button.dart';
import 'package:qaren/widgets/qaren_text.dart';
import 'package:qaren/widgets/section_title.dart';
import 'package:qaren/widgets/small_qarent_product.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
            onPressed: () {},
            icon: SvgPicture.asset(
              'images/ic_star.svg',
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'images/ic_favroite.svg',
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsetsDirectional.only(
          start: 16.w,
          end: 16.w,
          bottom: 20.h,
        ),
        children: [
          Container(
            color: Colors.grey,
            height: 185.h,
            margin: EdgeInsets.only(bottom: 25.h),
            child: Image.asset('images/product.png',fit: BoxFit.cover,),
          ),
          Row(
            children: [
              const QarenText(
                title: 'Product Name',
                textColor: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(width: 5.w),
              const QarenText(
                title: '(65486651654)',
                textColor: Colors.black,
                fontSize: 11,
                fontWeight: FontWeight.normal,
              ),
            ],
          ),
          const QarenText(
            title: 'Product Name',
            textColor: Colors.black,
            textAlign: TextAlign.start,
            fontSize: 11,
            fontWeight: FontWeight.normal,
          ),
          const SizedBox(height: 3),
          Row(
            children: [
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
              SizedBox(width: 5.w),
              const QarenText(
                title: 'Reviews (128)',
                textColor: AppColors.blue,
                fontSize: 10,
              ),
            ],
          ),
          const SizedBox(height: 3),
          const QarenText(
            title: 'Company',
            textColor: Colors.black,
            textAlign: TextAlign.start,
            fontWeight: FontWeight.normal,
            fontSize: 11,
          ),
          Row(
            children: [
              const QarenText(
                title: 'Unit: Kg',
                textColor: Colors.black,
                textAlign: TextAlign.start,
                fontWeight: FontWeight.normal,
                fontSize: 11,
              ),
              SizedBox(width: 15.w),
              const QarenText(
                title: 'Unit value: 3Kg',
                textColor: Colors.black,
                textAlign: TextAlign.start,
                fontWeight: FontWeight.normal,
                fontSize: 11,
              ),
              const Spacer(),
              const QarenText(
                title: '20.00 \$ - 25.00 \$',
                textColor: Colors.black,
                textAlign: TextAlign.start,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ],
          ),
          SizedBox(height: 5.h),
          Divider(height: 30.h),
          Row(
            children: [
              Column(
                children: [
                  SvgPicture.asset(
                    'images/ic_alarm.svg',
                    height: 24.h,
                    fit: BoxFit.scaleDown,
                  ),
                  SizedBox(height: 2.h),
                  const QarenText(
                    title: 'Price Alarm',
                    textColor: Colors.black,
                    textAlign: TextAlign.start,
                    fontWeight: FontWeight.w400,
                    fontSize: 9,
                  ),
                ],
              ),
              SizedBox(width: 15.w),
              Column(
                children: [
                  SvgPicture.asset(
                    'images/ic_black_bag.svg',
                    height: 24.h,
                    fit: BoxFit.scaleDown,
                  ),
                  SizedBox(height: 2.h),
                  const QarenText(
                    title: 'Qaren List',
                    textColor: Colors.black,
                    textAlign: TextAlign.start,
                    fontWeight: FontWeight.w400,
                    fontSize: 9,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 15.h),
          const QarenText(
            title: 'About Product:',
            textColor: Colors.black,
            textAlign: TextAlign.start,
            fontWeight: FontWeight.w400,
            fontSize: 11,
          ),
          SizedBox(height: 5.h),
          const QarenText(
            title:
                'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata',
            textColor: AppColors.gray,
            textAlign: TextAlign.start,
            fontWeight: FontWeight.w400,
            fontSize: 10,
          ),
          SizedBox(height: 20.h),
          Container(
            color: AppColors.grayBackGround,
            height: 34.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const QarenText(
                  title: 'Share with',
                  textColor: Colors.black,
                  fontSize: 11,
                  fontWeight: FontWeight.normal,
                ),
                SizedBox(width: 10.w),
                CircularSocialButton(
                  iconName: 'ic_whats_app',
                  marginEnd: 10,
                  onPressed: () {},
                ),
                CircularSocialButton(
                  iconName: 'ic_telegram',
                  marginEnd: 10,
                  onPressed: () {},
                ),
                CircularSocialButton(
                  iconName: 'ic_twitter',
                  marginEnd: 10,
                  onPressed: () {},
                ),
                CircularSocialButton(
                  iconName: 'ic_facebook_small',
                  onPressed: () {},
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          SectionTitle(
            title: "Result Product",
            horizontalPadding: 0,
            seeAll: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    const ProductsScreen(title: 'Most Viewed'),
              ),
            ),
          ),
          Container(
            constraints: BoxConstraints(maxHeight: 220.h),
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 14.w,
                childAspectRatio: 210.h / 163.w,
              ),
              itemBuilder: (context, index) {
                return SmallQarenProduct(
                  name: 'Product name here',
                  info: 'Trade mark - Country',
                  startPrice: '20.00',
                  endPrice: '20.00',
                  addToCart: () {},
                  favorite: () {},
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProductDetailsScreen(),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          SectionTitle(
            title: "Related Products",
            horizontalPadding: 0,
            seeAll: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    const ProductsScreen(title: 'Most Viewed'),
              ),
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: 10,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 14.h,
              crossAxisSpacing: 17.w,
              childAspectRatio: 163.w / 220.h,
            ),
            itemBuilder: (context, index) {
              return SmallQarenProduct(
                name: 'Product name here',
                info: 'Trade mark - Country',
                startPrice: '20.00',
                endPrice: '20.00',
                addToCart: () {},
                favorite: () {},
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProductDetailsScreen(),
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
