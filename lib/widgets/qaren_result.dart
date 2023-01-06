import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qaren/widgets/qaren_bordered_button.dart';
import 'package:qaren/widgets/qaren_gradient_button.dart';

import '../utils/app_colors.dart';
class QarenResult extends StatelessWidget {
  const QarenResult({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
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
      child: Column(

        children: [
          Row(
            children: [
              Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      margin: EdgeInsets.only(top: 5.h),
                      width: 60.w,
                      height: 60.h,
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
                  ),

                ],
              ),
              SizedBox(width: 10.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Super Market Name',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 13.sp,
                    ),
                  ),
                  SizedBox(height: 6.h,),

                  Text(
                    'foodstuffs - Detergents - Dairies',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontSize: 11.sp,
                    ),
                  ),
                  SizedBox(height: 4.h,),
                  Text(
                    'Alquds - Location Here location here',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontSize: 9.sp,
                    ),
                  ),

                ],
              ),

            ],
          ),

          Divider(height: 30.h,
            color: AppColors.divider,
            endIndent: 15.w,
            indent: 15.w,
            thickness: 0.25.h,
          ),

          Row(

            children: [

              Column(
                children: [
                  Text(
                    'Final Price',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontSize: 12.sp,
                    ),


                  ),
                  SizedBox(height: 5.h,),
                  Text(
                    '212.00',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 12.sp,
                    ),


                  ),
                ],
              ),
              SizedBox(width: 15.h),
              Column(
                children: [
                  Text(
                    'Product match',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontSize: 12.sp,
                    ),


                  ),
                  SizedBox(height: 5.h,),
                  Text(
                    '9/10',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 12.sp,
                    ),


                  ),
                ],
              ),
              Spacer(),

              QarenBorderedButton(
                height: 35,
                width: 100.w,
                backgroundColor: AppColors.blue,
                fontSize: 12,


                title: 'Show result',
                onPressed: () => Navigator.pushNamed(context,'/qaren_result_screen'),
              ),
              // QarenBorderedButton(
              //   title: 'Sign In',
              //   onPressed: () => Navigator.pop(context),
              // ),
            ],
          ),
          SizedBox(height: 20.h),
          QarenGradientButton(
            fontSize: 12,
            height: 35,
            title: 'Add to cart',


            margin: EdgeInsets.symmetric(horizontal: 0.h),
            onPressed: () {

            },
          ),
        ],

      ),
    );
  }
}