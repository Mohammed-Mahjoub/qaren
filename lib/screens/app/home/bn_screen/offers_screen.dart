import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qaren/screens/app/home/bn_screen/products_screen.dart';
import 'package:qaren/widgets/qaren_product.dart';

import '../../../../utils/app_colors.dart';
import '../../../../widgets/qaren_category.dart';
import '../../../../widgets/qaren_text.dart';
import '../../../../widgets/section_title.dart';
import '../../../../widgets/small_qarent_product.dart';
import '../../details/product_details_screen.dart';
class OffersScreen extends StatefulWidget {
  const OffersScreen({Key? key}) : super(key: key);

  @override
  State<OffersScreen> createState() => _OffersScreenState();
}

class _OffersScreenState extends State<OffersScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: TextField(
                  expands: true,
                  maxLines: null,
                  minLines: null,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    constraints: BoxConstraints(maxHeight: 44.h),
                    prefixIcon: SvgPicture.asset(
                      'images/ic_search.svg',
                      width: 24.w,
                      height: 24.h,
                      fit: BoxFit.scaleDown,
                    ),
                    hintText: 'Search for a product',
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 12.sp,
                      color: AppColors.gray,
                    ),
                    suffixIcon: IconButton(
                      icon: SvgPicture.asset(
                        'images/ic_qr.svg',
                        width: 24.w,
                        height: 24.h,
                        fit: BoxFit.scaleDown,
                      ),
                      onPressed: () =>
                          Navigator.pushNamed(context, '/qr_code_screen'),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.w),
                      borderSide: const BorderSide(
                        color: AppColors.gray,
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.w),
                      borderSide: const BorderSide(
                        color: AppColors.gray,
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                flex: 1,
                child: Container(
                  height: 44.h,
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: AppColors.gray,
                      width: 1,
                    ),
                  ),
                  child: DropdownButton<int>(
                    isExpanded: true,
                    onChanged: (int? selectedItem) {},
                    value: 0,
                    style: GoogleFonts.poppins(
                      color: AppColors.gray,
                      fontSize: 12.sp,
                    ),
                    icon: SvgPicture.asset('images/ic_down_arrow.svg'),
                    underline: const Divider(
                      height: 0,
                      thickness: 0,
                      color: Colors.transparent,
                    ),
                    items: const [
                      DropdownMenuItem(
                        value: 0,
                        child: Text('Alquds'),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsetsDirectional.only(top: 25.h, bottom: 20.h),
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
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  QarenText(
                    title: 'News will appear here',
                    fontSize: 12.sp,
                    textColor: Colors.white,
                  ),
                  SizedBox(width: 5.w),
                  Container(
                    width: 1.5.w,
                    height: 20,
                    color: Colors.white,
                  ),
                  SizedBox(width: 5.w),
                  QarenText(
                    title: 'News will appear here',
                    fontSize: 12.sp,
                    textColor: Colors.white,
                  ),
                  SizedBox(width: 5.w),
                  Container(
                    width: 1.5.w,
                    height: 20,
                    color: Colors.white,
                  ),
                  SizedBox(width: 5.w),
                  QarenText(
                    title: 'News will appear here',
                    fontSize: 12.sp,
                    textColor: Colors.white,
                  ),
                  SizedBox(width: 5.w),
                  Container(
                    width: 1.5.w,
                    height: 20,
                    color: Colors.white,
                  ),
                  SizedBox(width: 5.w),
                  QarenText(
                    title: 'News will appear here',
                    fontSize: 12.sp,
                    textColor: Colors.white,
                  ),
                  SizedBox(width: 5.w),
                  Container(
                    width: 1.5.w,
                    height: 20,
                    color: Colors.white,
                  ),
                  SizedBox(width: 5.w),
                ],
              ),
            ),
          ),
        ),
        Container(
          height: 185.h,
          color: AppColors.gray,
          margin: EdgeInsetsDirectional.only(bottom: 25.h),
          child: Image.asset('images/product.png',fit: BoxFit.cover,),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text(
            'Top Categories',
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: AppColors.semiBlack,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(height: 15.h),
        ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 90.h),
          child: GridView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            itemCount: 4,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: 16.w,
              childAspectRatio: 90.h / 90.w,
            ),
            itemBuilder: (context, index) {
              if (index != 3) {
                return InkWell(
                  onTap: () {},
                  child: const QarenCategory(title: 'Top Categories'),
                );
              } else {
                return InkWell(
                  onTap: () =>
                      Navigator.pushNamed(context, '/categories_screen'),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                        begin: AlignmentDirectional.topStart,
                        end: AlignmentDirectional.bottomEnd,
                        colors: [
                          Color(0xFF5745DE),
                          Color(0xFF689DDE),
                        ],
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'images/ic_categories.svg',
                          width: 40.w,
                          height: 40.h,
                          fit: BoxFit.scaleDown,
                        ),
                        SizedBox(height: 5.h),
                        const QarenText(
                          title: 'All Categories',
                          fontSize: 9,
                          fontWeight: FontWeight.w500,
                        )
                      ],
                    ),
                  ),
                );
              }
            },
          ),
        ),
        SizedBox(height: 20.h),
        SectionTitle(
          title: "Offers Magazine",
          seeAll: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ProductsScreen(title: 'Offers Magazine'),
            ),
          ),
        ),
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
        SectionTitle(
          title: "Qaren Offers",
          seeAll: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ProductsScreen(title: 'Qaren Offers'),
            ),
          ),
        ),
        Container(
          constraints: BoxConstraints(maxHeight: 220.h),
          margin: EdgeInsets.only(bottom: 25.h),
          child: GridView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 16.w),
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
          title: "Special offer",
          seeAll: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ProductsScreen(title: 'Special offer'),
            ),
          ),
        ),
        Container(
          constraints: BoxConstraints(maxHeight: 220.h),
          margin: EdgeInsets.only(bottom: 25.h),
          child: GridView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 16.w),
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
          title: "Offers",
          seeAll: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ProductsScreen(title: 'Offers'),
            ),
          ),
        ),
        Container(
          constraints: BoxConstraints(maxHeight: 220.h),
          margin: EdgeInsets.only(bottom: 25.h),
          child: GridView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 16.w),
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
          title: "Exceptional Offer",
          seeAll: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ProductsScreen(title: 'Exceptional Offer'),
            ),
          ),
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          itemCount: 3,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            mainAxisSpacing: 10.h,
            crossAxisSpacing: 16.w,
            childAspectRatio: 343.w / 140.h,
          ),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(2),
              child: QarenProduct(
                name: 'Product name here',
                superMarket: '',
                tradeMark: '',
                price: 20.00 - 25.00,
                addToCart: () {},
                favorite: () {},
              ),
            );
          },
        ),
      ],
    );
  }
}
