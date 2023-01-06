import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qaren/screens/app/details/product_details_screen.dart';
import 'package:qaren/widgets/qaren_text.dart';
import 'package:qaren/widgets/small_qarent_product.dart';

import '../../../../utils/app_colors.dart';
import '../../../../widgets/qaren_bordered_button.dart';
import '../../../../widgets/qaren_gradient_button.dart';
import '../../../../widgets/qaren_result.dart';

class QarenAllResultsScreen extends StatefulWidget {
  const QarenAllResultsScreen({Key? key, }) : super(key: key);



  @override
  State<QarenAllResultsScreen> createState() => _QarenAllResultsScreenState();
}

class _QarenAllResultsScreenState extends State<QarenAllResultsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () => Navigator.pop(context),
          color: Colors.black,
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
        backgroundColor: Colors.white,
        title: QarenText(
          title: 'Qaren All',
          textColor: Colors.black,
          fontSize: 17.sp,
          fontWeight: FontWeight.w500,
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 20.h,
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            itemCount: 4,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: 10.h,
              childAspectRatio: 343.w / 211.h,
            ),
            itemBuilder: (context, index) {
              return QarenResult();
            },
          ),
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
                        title: 'Product Match',
                        fontSize: 17,
                        textColor: Colors.white,
                        buttonColor: AppColors.blue,
                        onPressed: () {},
                      ),
                      SizedBox(height: 10.h),
                      QarenGradientButton(
                        title: 'Price',
                        fontSize: 17,
                        textColor: Colors.white,
                        buttonColor: AppColors.blue,
                        onPressed: () {},
                      ),
                      SizedBox(height: 10.h),
                      QarenGradientButton(
                        title: 'Distance',
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


