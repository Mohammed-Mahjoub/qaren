import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qaren/screens/app/home/bn_screen/categorized_stores_screen.dart';
import 'package:qaren/screens/app/home/bn_screen/products_screen.dart';
import 'package:qaren/screens/app/store/store_screen.dart';
import 'package:qaren/utils/app_colors.dart';
import 'package:qaren/widgets/qaren_button.dart';
import 'package:qaren/widgets/qaren_category.dart';
import 'package:qaren/widgets/qaren_store.dart';
import 'package:qaren/widgets/qaren_text.dart';
import 'package:qaren/widgets/section_title.dart';
import 'package:qaren/widgets/small_qarent_product.dart';

class StoresScreen extends StatefulWidget {
  const StoresScreen({Key? key}) : super(key: key);

  @override
  State<StoresScreen> createState() => _StoresScreenState();
}

class _StoresScreenState extends State<StoresScreen> {
  bool online = false;
  bool offline = true;
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
                    hintText: 'Search for a store',
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
        Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    offline = true;
                    online = false;
                  });
                },
                child: QarenText(
                  title: 'Stores',
                  textColor: offline ? AppColors.blue : AppColors.gray,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              width: 1.w,
              height: 15.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: AlignmentDirectional.topCenter,
                  end: AlignmentDirectional.bottomCenter,
                  colors: [
                    Colors.white.withOpacity(0),
                    Colors.black,
                    Colors.white.withOpacity(0),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    online = true;
                    offline = false;
                  });
                },
                child: QarenText(
                  title: 'Online Stores',
                  textColor: online? AppColors.blue : AppColors.gray,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        Container(
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
          title: "Recommended Stores",
          seeAll: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CategorizedStoresScreen(
                  title: 'Recommended Stores Stores'),
            ),
          ),
        ),
        Container(
          constraints: BoxConstraints(maxHeight: 150.h),
          margin: EdgeInsets.only(bottom: 25.h),
          child: GridView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            itemCount: 10,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: 14.w,
              childAspectRatio: 150.h / 335.w,
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
        ),
        Container(
          height: 103.h,
          margin: EdgeInsets.only(bottom: 20.h),
          decoration: const BoxDecoration(
            color: AppColors.gray,
          ),
          child: Image.asset('images/ads.png',fit: BoxFit.cover,),
        ),
        SectionTitle(
          title: "Top Rated",
          seeAll: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  const CategorizedStoresScreen(title: 'Top Rated Stores'),
            ),
          ),
        ),
        Container(
          constraints: BoxConstraints(maxHeight: 150.h),
          margin: EdgeInsets.only(bottom: 25.h),
          child: GridView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            itemCount: 10,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: 14.w,
              childAspectRatio: 150.h / 335.w,
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
        ),
        Container(
          height: 103.h,
          margin: EdgeInsets.only(bottom: 15.h),
          decoration: const BoxDecoration(
            color: AppColors.gray,
          ),
          child: Image.asset('images/ads.png',fit: BoxFit.cover,),
        ),
        SectionTitle(
          title: "Stores",
          seeAll: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ProductsScreen(title: 'Best Recent'),
            ),
          ),
        ),
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
}
