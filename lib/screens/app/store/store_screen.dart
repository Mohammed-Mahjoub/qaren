import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qaren/screens/app/details/product_details_screen.dart';
import 'package:qaren/screens/app/home/bn_screen/products_screen.dart';
import 'package:qaren/utils/app_colors.dart';
import 'package:qaren/widgets/circular_social_button.dart';
import 'package:qaren/widgets/qaren_gradient_button.dart';
import 'package:qaren/widgets/qaren_store_info.dart';
import 'package:qaren/widgets/qaren_text.dart';
import 'package:qaren/widgets/qaren_text_field.dart';
import 'package:qaren/widgets/section_title.dart';
import 'package:qaren/widgets/small_qarent_product.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({Key? key}) : super(key: key);

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  late TextEditingController _amountController;
  late TextEditingController _idController;

  @override
  void initState() {
    super.initState();
    _amountController = TextEditingController();
    _idController = TextEditingController();
  }

  @override
  void dispose() {
    _amountController.dispose();
    _idController.dispose();
    super.dispose();
  }

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
            color: Colors.white,
            height: 215.h,
            child: Stack(
              children: [
                Container(
                  color: Colors.grey,
                  height: 185.h,
                  child: Image.asset(
                    'images/product.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    height: 60.h,
                    width: 60.w,
                    child: Stack(
                      children: [
                        Container(
                          width: 60.w,
                          height: 60.h,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black45,
                                offset: Offset(0, 0),
                                blurRadius: 6,
                              ),
                            ],
                          ),
                          child: Image.asset(
                            'images/poke.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional.bottomEnd,
                          child: Container(
                            margin:
                                EdgeInsetsDirectional.only(bottom: 5.h, end: 2),
                            width: 10,
                            height: 10,
                            decoration: const BoxDecoration(
                              color: Color(0xFF3AE957),
                              shape: BoxShape.circle,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5.h),
          const QarenText(
            title: 'Super Market Name',
            textColor: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          const QarenText(
            title: 'foodstuffs - Detergents - Dairies',
            textColor: Colors.black,
            fontSize: 11,
            fontWeight: FontWeight.normal,
          ),
          SizedBox(height: 5.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
          Divider(height: 26.h),
          Row(
            children: [
              SvgPicture.asset(
                'images/ic_location.svg',
              ),
              SizedBox(width: 5.w),
              const QarenText(
                title: 'location :',
                textColor: Colors.black,
                fontSize: 11,
                fontWeight: FontWeight.normal,
              ),
              SizedBox(width: 10.w),
              const QarenText(
                title: 'Alquds - Location Here location here - 3 Km away',
                textColor: AppColors.blue,
                fontSize: 11,
                fontWeight: FontWeight.normal,
              ),
            ],
          ),
          Divider(height: 24.h),
          Row(
            children: [
              SvgPicture.asset(
                'images/ic_delivery.svg',
                color: Colors.black,
              ),
              SizedBox(width: 5.w),
              const QarenText(
                title: 'location:',
                textColor: Colors.black,
                fontSize: 11,
                fontWeight: FontWeight.normal,
              ),
              SizedBox(width: 10.w),
              const QarenText(
                title: '5\$(3H/local) 20\$(2D/Jerusalem) 30\$(1W/48 area)',
                textColor: Colors.black,
                fontSize: 11,
                fontWeight: FontWeight.normal,
              ),
            ],
          ),
          Divider(height: 24.h),
          Row(
            children: [
              SvgPicture.asset(
                'images/ic_tasks.svg',
                color: Colors.black,
              ),
              SizedBox(width: 5.w),
              const QarenText(
                title: 'Preparing:',
                textColor: Colors.black,
                fontSize: 11,
                fontWeight: FontWeight.normal,
              ),
              SizedBox(width: 10.w),
              const QarenText(
                title: 'Free Charge',
                textColor: Colors.black,
                fontSize: 11,
                fontWeight: FontWeight.normal,
              ),
            ],
          ),
          Divider(height: 24.h),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/work_hour_screen');
            },
            child: Row(
              children: [
                SvgPicture.asset(
                  'images/ic_clock.svg',
                ),
                SizedBox(width: 5.w),
                const QarenText(
                  title: 'Working hour:',
                  textColor: Colors.black,
                  fontSize: 11,
                  fontWeight: FontWeight.normal,
                ),
                SizedBox(width: 10.w),
                const QarenText(
                  title: '8:00 am - 6:00 pm',
                  textColor: AppColors.blue,
                  fontSize: 11,
                  fontWeight: FontWeight.normal,
                ),
              ],
            ),
          ),
          Divider(height: 24.h),
          Row(
            children: [
              InkWell(
                onTap: () {
                  _showBlockDialog(context);
                },
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'images/ic_block.svg',
                      height: 24.h,
                      fit: BoxFit.scaleDown,
                    ),
                    SizedBox(height: 2.h),
                    const QarenText(
                      title: 'Block',
                      textColor: Colors.black,
                      textAlign: TextAlign.start,
                      fontWeight: FontWeight.w400,
                      fontSize: 9,
                    ),
                  ],
                ),
              ),
              SizedBox(width: 15.w),
              InkWell(
                onTap: () {
                  _showDiscountDialog(context);
                },
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'images/ic_discount.svg',
                      height: 24.h,
                      fit: BoxFit.scaleDown,
                    ),
                    SizedBox(height: 2.h),
                    const QarenText(
                      title: 'Flat Discount',
                      textColor: Colors.black,
                      textAlign: TextAlign.start,
                      fontWeight: FontWeight.w400,
                      fontSize: 9,
                    ),
                  ],
                ),
              ),
              SizedBox(width: 15.w),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/branch_screen');
                },
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'images/ic_branch.svg',
                      height: 24.h,
                      fit: BoxFit.scaleDown,
                    ),
                    SizedBox(height: 2.h),
                    const QarenText(
                      title: 'Branch',
                      textColor: Colors.black,
                      textAlign: TextAlign.start,
                      fontWeight: FontWeight.w400,
                      fontSize: 9,
                    ),
                  ],
                ),
              ),
              SizedBox(width: 15.w),
            ],
          ),
          SizedBox(height: 15.h),
          const QarenText(
            title: 'About Us:',
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
          // OFFER MAGAZINES
          SectionTitle(
            title: "Offers Magazine",
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
            constraints: BoxConstraints(maxHeight: 130.h),
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 14.w,
                childAspectRatio: 130.h / 324.w,
              ),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                      begin: AlignmentDirectional.bottomStart,
                      end: AlignmentDirectional.topEnd,
                      colors: [
                        Color(0xFF5745DE),
                        Color(0xFF689DDE),
                      ],
                    ),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.only(
                          top: 15.h,
                          bottom: 15.w,
                          start: 15.w,
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 100.w,
                              height: 100.h,
                              margin: EdgeInsetsDirectional.only(end: 15.w),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset(
                                'images/chips.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.only(end: 33.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const QarenText(
                                      title: 'Store Name',
                                      textColor: Colors.white,
                                      textAlign: TextAlign.start,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13,
                                    ),
                                    const QarenText(
                                      title: 'Offer Name here',
                                      textColor: Colors.white,
                                      textAlign: TextAlign.start,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 11,
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        text:
                                            'Lorem ipsum dolor sit amet, consetetur magna aliquyam erat, sed diam',
                                        style: GoogleFonts.poppins(
                                          fontSize: 9.sp,
                                          color: Colors.white,
                                          fontWeight: FontWeight.normal,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: ' Read more...',
                                            style: GoogleFonts.poppins(
                                              fontSize: 9.sp,
                                              color: AppColors.blue,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.only(end: 10.w, top: 10.h),
                        child: Align(
                          alignment: AlignmentDirectional.topEnd,
                          child: SvgPicture.asset(
                            'images/ic_favorite.svg',
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.only(
                          end: 5.w,
                          bottom: 5.h,
                        ),
                        child: const Align(
                          alignment: AlignmentDirectional.bottomEnd,
                          child: QarenText(
                            title: 'Dye : 12/11/2023',
                            fontSize: 10,
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          // SPECIAL OFFER
          SectionTitle(
            title: "Special offer",
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
            margin: EdgeInsets.only(bottom: 10.h),
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
                  hasOffer: true,
                  offerColor: const Color(0xFF5745DE),
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
          // SPECIAL OFFER
          SectionTitle(
            title: "Special offer",
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
            margin: EdgeInsets.only(bottom: 10.h),
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
                  hasOffer: true,
                  offerColor: const Color(0xFFDF2E2E),
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
          // OFFER
          SectionTitle(
            title: "Offers",
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
            margin: EdgeInsets.only(bottom: 10.h),
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
                  hasOffer: false,
                  hasSale: true,
                  saleColor: Color(0xFFDF2E2E),
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
          // Exceptional Offer
          SectionTitle(
            title: "Exceptional Offer",
            horizontalPadding: 0,
            seeAll: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    const ProductsScreen(title: 'Most Viewed'),
              ),
            ),
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 3,
            itemBuilder: (context, index) {
              return QarenStoreInfo(
                name: 'Super Market Name',
                distance: '5 Km away',
                categories: 'foodstuffs - Detergents - Dairies',
                location: 'Alquds - Location Here location here',
                online: index % 2 == 0,
                addToCart: () {},
                favorite: () {},
              );
            },
          ),
          // Exceptional Offer
          SectionTitle(
            title: "Product",
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
            constraints: BoxConstraints(maxHeight: 100),
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              children: [
                Container(
                  height: 90.h,
                  width: 90.w,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.blue,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/drink.png',
                        width: 22.w,
                        height: 35.h,
                      ),
                      SizedBox(height: 8.h),
                      QarenText(
                        title: 'Drink',
                        fontSize: 11.sp,
                        textColor: Colors.white,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 15.w),
                ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: 90.w,
                      height: 73.h,
                      child: Stack(
                        children: [
                        Positioned(left: 0,right: 0,top:0,child: Image.asset('images/cup.png')),
                        Positioned(left: 0,right: 0,bottom:0,child: Image.asset('images/bottom.png',height: 55.h,width: 90.w,fit: BoxFit.cover,),),
                        Positioned(left: 0,right: 0,bottom:21,child: QarenText(title: 'foodstuffs ',textColor: AppColors.semiBlack,fontSize: 10.sp,)),

                        ],
                      ),
                    );
                  },
                )
              ],
            ),
          ),
          SizedBox(height: 20.h),
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
                fixedPrice: '100',
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

  Future<void> _showBlockDialog(BuildContext context) async {
    showDialog(
        context: context,
        barrierColor: Colors.white60,
        builder: (_) {
          return StatefulBuilder(
            builder: (context, setState) {
              return AlertDialog(
                backgroundColor: Colors.white,
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                content: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Align(
                        alignment: Alignment.centerRight,
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
                    ),
                    SizedBox(height: 60.h),
                    QarenText(
                      title: 'Block Store',
                      textAlign: TextAlign.center,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w600,
                      textColor: Colors.black,
                    ),
                    QarenText(
                      title: 'Are you sure you want to block',
                      textAlign: TextAlign.center,
                      fontSize: 13.sp,
                      textColor: const Color(0XFF979696),
                    ),
                    QarenText(
                      title: 'list name here',
                      textAlign: TextAlign.center,
                      fontSize: 13.sp,
                      textColor: const Color(0XFFDF2E2E),
                    ),
                    SizedBox(height: 30.h),
                    QarenGradientButton(
                      title: 'Block',
                      fontSize: 17,
                      textColor: Colors.white,
                      buttonColor: const Color(0XFFDF2E2E),
                      onPressed: () {},
                    ),
                  ],
                ),
              );
            },
          );
        });
  }

  Future<void> _showDiscountDialog(BuildContext context) async {
    showDialog(
        context: context,
        barrierColor: Colors.white60,
        builder: (_) {
          return StatefulBuilder(
            builder: (context, setState) {
              return AlertDialog(
                backgroundColor: Colors.white,
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                content: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Align(
                        alignment: Alignment.centerRight,
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
                    ),
                    SizedBox(height: 60.h),
                    QarenText(
                      title: 'Insert Discount Amount',
                      textAlign: TextAlign.center,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w600,
                      textColor: Colors.black,
                    ),
                    QarenText(
                      title:
                          'please insert discount amount to get store\'s code',
                      textAlign: TextAlign.center,
                      fontSize: 13.sp,
                      textColor: const Color(0XFF979696),
                    ),
                    SizedBox(height: 20.h),
                    QarenTextField(
                      label: 'Insert discount amount',
                      controller: _amountController,
                      textInputType: TextInputType.number,
                    ),
                    SizedBox(height: 10.h),
                    QarenTextField(
                      label: 'Insert Store ID',
                      controller: _idController,
                      textInputType: TextInputType.number,
                    ),
                    SizedBox(height: 30.h),
                    QarenGradientButton(
                      title: 'Save',
                      fontSize: 17,
                      textColor: Colors.white,
                      buttonColor: const Color(0XFF689DDE),
                      onPressed: () {},
                    ),
                  ],
                ),
              );
            },
          );
        });
  }
}
