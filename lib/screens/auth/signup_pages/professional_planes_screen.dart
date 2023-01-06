import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qaren/utils/app_colors.dart';
import 'package:qaren/widgets/qaren_button.dart';

import '../../../widgets/qaren_bordered_button.dart';
import '../../../widgets/qaren_gradient_button.dart';
import '../../../widgets/qaren_text.dart';

class ProfessionalPlanesScreen extends StatefulWidget {
  const ProfessionalPlanesScreen({Key? key}) : super(key: key);

  @override
  State<ProfessionalPlanesScreen> createState() =>
      _ProfessionalPlanesScreenState();
}

class _ProfessionalPlanesScreenState extends State<ProfessionalPlanesScreen> {
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
        backgroundColor: Colors.white,
        title: QarenText(
          title: 'Professional Planes',
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
              crossAxisCount: 2,
              mainAxisSpacing: 25.h,
              crossAxisSpacing: 25.w,
              childAspectRatio: 159.w / 224.h,
            ),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.w),
                  border: Border.all(color: AppColors.blue,
                    width: 1.w

                  )
                ),
                child: Column(

                  children: [
                  SizedBox(
                  height: 15.h,),
                    QarenText(
                      title: 'Free Trial',
                      fontSize: 9.sp,
                      fontWeight: FontWeight.w400,
                      textColor: AppColors.blue,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    QarenText(
                      title: 'Create Profisional list ',
                      fontSize: 9.sp,
                      fontWeight: FontWeight.w400,
                      textColor: Colors.black,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    QarenText(
                      title: 'Comparing product price',
                      fontSize: 9.sp,
                      fontWeight: FontWeight.w400,
                      textColor: Colors.black,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    QarenText(
                      title: 'Preparing orders',
                      fontSize: 9.sp,
                      fontWeight: FontWeight.w400,
                      textColor: Colors.black,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    QarenText(
                      title: 'Delivery orders',
                      fontSize: 9.sp,
                      fontWeight: FontWeight.w400,
                      textColor: Colors.black,
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    QarenButton(
                      text: 'Subscribe',
                      edgeInsetsDirectional:
                          EdgeInsetsDirectional.only(start: 24.w, end: 24.w),
                      color: AppColors.darkBlue,
                      borderRadius: 25.h,
                      height: 30,
                      fontSize: 12,
                      elevation: 0,
                      onPressed: (){
                        Navigator.pushNamed(context, '/payments_method_screen');

                      }
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
