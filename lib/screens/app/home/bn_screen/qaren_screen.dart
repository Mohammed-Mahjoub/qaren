import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qaren/screens/app/details/product_details_screen.dart';
import 'package:qaren/screens/app/home/bn_screen/products_screen.dart';
import 'package:qaren/utils/app_colors.dart';
import 'package:qaren/widgets/qaren_bordered_button.dart';
import 'package:qaren/widgets/qaren_category.dart';
import 'package:qaren/widgets/qaren_gradient_button.dart';
import 'package:qaren/widgets/qaren_text.dart';
import 'package:qaren/widgets/qaren_text_field.dart';
import 'package:qaren/widgets/section_title.dart';
import 'package:qaren/widgets/small_qarent_product.dart';

import '../../../../widgets/qaren_product_cart.dart';

class QarenScreen extends StatefulWidget {
  const QarenScreen({Key? key}) : super(key: key);

  @override
  State<QarenScreen> createState() => _QarenScreenState();
}

class _QarenScreenState extends State<QarenScreen> {
  late TextEditingController _noteController;
  bool isHome = true;
  bool permanent = true;
  bool isPublic = false;
  bool share = false;
  bool isWork = false;
  @override
  void initState() {
    super.initState();
    _noteController = TextEditingController();
  }

  @override
  void dispose() {
    _noteController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
      children: [
        SizedBox(height: 10.h),
        Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    permanent = true;
                    share = false;
                  });
                },
                child: QarenText(
                  title: 'Permanent',
                  textColor: permanent ? AppColors.blue : AppColors.gray,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    permanent = false;
                    share = true;
                  });
                },
                child: QarenText(
                  title: 'Share',
                  textColor: share ? AppColors.blue : AppColors.gray,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10.h),
        StatefulBuilder(builder: (context, setState) {
          if(permanent){
            return Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                        },
                        child: Container(
                          height: 44.h,
                          width: 44.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color(0XFF689DDE).withOpacity(0.4),
                          ),
                          child: const Center(
                            child: Icon(Icons.add,color: AppColors.blue,),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              isHome = true;
                              isPublic = false;
                              isWork = false;
                            });
                          },
                          child: Container(
                            height: 44.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.r),
                              color: isHome ? const Color(0XFF689DDE).withOpacity(0.4) : const Color(0XFFB8B7B7).withOpacity(0.4),
                            ),
                            child: Center(
                              child: QarenText(
                                title: 'Home',
                                textColor: isHome ? AppColors.blue : AppColors.gray,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              isHome = false;
                              isPublic = true;
                              isWork = false;
                            });
                          },
                          child: Container(
                            height: 44.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.r),
                              color: isPublic ? const Color(0XFF689DDE).withOpacity(0.4) : const Color(0XFFB8B7B7).withOpacity(0.4),
                            ),
                            child: Center(
                              child: QarenText(
                                title: 'Public',
                                textColor: isPublic ? AppColors.blue : AppColors.gray,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              isHome = false;
                              isPublic = false;
                              isWork = true;
                            });
                          },
                          child: Container(
                            height: 44.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.r),
                              color: isWork ? const Color(0XFF689DDE).withOpacity(0.4) : const Color(0XFFB8B7B7).withOpacity(0.4),
                            ),
                            child: Center(
                              child: QarenText(
                                title: 'Work',
                                textColor: isWork ? AppColors.blue : AppColors.gray,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15.h),
                Row(
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
                SizedBox(height: 15.h),
                Row(
                  children: [
                    QarenText(
                      title: 'Set as default',
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      textColor: const Color(0XFF689DDE),
                    ),
                    const Spacer(),
                    SvgPicture.asset('images/edit.svg'),
                  ],
                ),
                SizedBox(height: 10.h),
                InkWell(
                  onTap: (){
                    _showAddDialog(context);
                  },
                  child: Row(
                    children: [
                      SvgPicture.asset('images/addFrind.svg'),
                      SizedBox(width: 5.w),
                      QarenText(
                        title: 'Add Friend',
                        fontSize: 14.sp,
                        textColor: AppColors.semiBlack,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    const Image(
                      image: AssetImage('images/user.png'),
                      height: 30,
                      width: 30,
                    ),
                    SizedBox(width: 5.w),
                    QarenText(
                      title: 'Ahmad Ali',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      textColor: AppColors.semiBlack,
                    ),
                    SizedBox(width: 10.w),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.red),
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.close,
                          color: AppColors.red,
                          size: 15,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15.h),
                QarenText(
                  title: 'Categorie',
                  textAlign: TextAlign.start,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  textColor: AppColors.semiBlack,
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return QarenProductCart(
                      name: 'Product name here',
                      superMarket: 'Super market name',
                      tradeMark: 'Trade mark - Country',
                      price: 25.00,
                      delete: () {},
                      online: index % 2 == 0,
                    );
                  },
                ),
                SizedBox(height: 10.h),
                QarenText(
                  title: 'Write Note for my self :',
                  textAlign: TextAlign.start,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  textColor: AppColors.semiBlack,
                ),
                SizedBox(height: 10.h),
                QarenTextField(
                  label: '',
                  controller: _noteController,
                ),
                SizedBox(height: 30.h),
                QarenBorderedButton(title: 'Qaren All', onPressed: () {
                  Navigator.pushNamed(context, '/qaren_all_screen');
                }),
              ],
            );
          }
          else{
            return Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Row(
                    children: [
                      SizedBox(width: 10.w),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              isHome = true;
                              isPublic = false;
                              isWork = false;
                            });
                          },
                          child: Container(
                            height: 44.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.r),
                              color: isHome ? const Color(0XFF689DDE).withOpacity(0.4) : const Color(0XFFB8B7B7).withOpacity(0.4),
                            ),
                            child: Center(
                              child: QarenText(
                                title: 'Home',
                                textColor: isHome ? AppColors.blue : AppColors.gray,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              isHome = false;
                              isPublic = true;
                              isWork = false;
                            });
                          },
                          child: Container(
                            height: 44.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.r),
                              color: isPublic ? const Color(0XFF689DDE).withOpacity(0.4) : const Color(0XFFB8B7B7).withOpacity(0.4),
                            ),
                            child: Center(
                              child: QarenText(
                                title: 'Public',
                                textColor: isPublic ? AppColors.blue : AppColors.gray,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              isHome = false;
                              isPublic = false;
                              isWork = true;
                            });
                          },
                          child: Container(
                            height: 44.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.r),
                              color: isWork ? const Color(0XFF689DDE).withOpacity(0.4) : const Color(0XFFB8B7B7).withOpacity(0.4),
                            ),
                            child: Center(
                              child: QarenText(
                                title: 'Work',
                                textColor: isWork ? AppColors.blue : AppColors.gray,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15.h),
                Row(
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
                SizedBox(height: 15.h),
                Row(
                  children: [
                    QarenText(
                      title: 'Set as default',
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      textColor: const Color(0XFF689DDE),
                    ),
                    const Spacer(),
                    SvgPicture.asset('images/edit.svg'),
                  ],
                ),
                SizedBox(height: 10.h),
                InkWell(
                  onTap: (){
                    _showAddDialog(context);
                  },
                  child: Row(
                    children: [
                      SvgPicture.asset('images/addFrind.svg'),
                      SizedBox(width: 5.w),
                      QarenText(
                        title: 'Add Friend',
                        fontSize: 14.sp,
                        textColor: AppColors.semiBlack,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    const Image(
                      image: AssetImage('images/user.png'),
                      height: 30,
                      width: 30,
                    ),
                    SizedBox(width: 5.w),
                    QarenText(
                      title: 'Ahmad Ali',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      textColor: AppColors.semiBlack,
                    ),
                    SizedBox(width: 10.w),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.red),
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.close,
                          color: AppColors.red,
                          size: 15,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15.h),
                QarenText(
                  title: 'Categorie',
                  textAlign: TextAlign.start,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  textColor: AppColors.semiBlack,
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return QarenProductCart(
                      name: 'Product name here',
                      superMarket: 'Super market name',
                      tradeMark: 'Trade mark - Country',
                      price: 25.00,
                      delete: () {},
                      online: index % 2 == 0,
                    );
                  },
                ),
                SizedBox(height: 10.h),
                QarenText(
                  title: 'Write Note for my self :',
                  textAlign: TextAlign.start,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  textColor: AppColors.semiBlack,
                ),
                SizedBox(height: 10.h),
                QarenTextField(
                  label: '',
                  controller: _noteController,
                ),
                SizedBox(height: 30.h),
                QarenBorderedButton(title: 'Qaren All', onPressed: () {
                  Navigator.pushNamed(context, '/qaren_all_screen');
                }),
              ],
            );
          }
        },)
      ],
    );
  }

  Future<void> _showAddDialog(BuildContext context) async {
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
                    Row(
                      children: [
                        Expanded(
                          child: QarenText(
                            title: 'Add Friend',
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w600,
                            textColor: AppColors.semiBlack,
                          ),
                        ),
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
                      ],
                    ),
                    SizedBox(height: 30.h),
                    QarenText(
                      title: 'Insert User ID',
                      textColor: AppColors.semiBlack,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(height: 10.h),
                    QarenText(
                      title: 'please insert user ID to share your list with',
                      textAlign: TextAlign.center,
                      textColor: AppColors.gray,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(height: 20.h),
                    QarenTextField(
                      label: 'Insert points amount',
                      controller: _noteController,
                      textInputType: TextInputType.number,
                    ),
                    SizedBox(height: 30.h),
                    QarenGradientButton(
                      title: 'Add User',
                      textColor: Colors.white,
                      onPressed: () {
                        _showAddListDialog(context);
                      },
                    ),
                  ],
                ),
              );
            },
          );
        });
  }
  Future<void> _showAddListDialog(BuildContext context) async {
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
                    Row(
                      children: [
                        Expanded(
                          child: QarenText(
                            title: 'Add Permanent List',
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w600,
                            textColor: AppColors.semiBlack,
                          ),
                        ),
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
                      ],
                    ),
                    SizedBox(height: 30.h),
                    QarenText(
                      title: 'Insert List Name',
                      textColor: AppColors.semiBlack,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(height: 10.h),
                    QarenText(
                      title: 'please insert list name to add new list to your permanent list',
                      textAlign: TextAlign.center,
                      textColor: AppColors.gray,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(height: 20.h),
                    QarenTextField(
                      label: 'List name',
                      controller: _noteController,
                      textInputType: TextInputType.text,
                    ),
                    SizedBox(height: 30.h),
                    QarenGradientButton(
                      title: 'Save List',
                      textColor: Colors.white,
                      onPressed: () {_showEditListDialog(context);},
                    ),
                  ],
                ),
              );
            },
          );
        });
  }
  Future<void> _showEditListDialog(BuildContext context) async {
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
                    Row(
                      children: [
                        Expanded(
                          child: QarenText(
                            title: 'Edit Permanent List',
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w600,
                            textColor: AppColors.semiBlack,
                          ),
                        ),
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
                      ],
                    ),
                    SizedBox(height: 20.h),
                    QarenTextField(
                      label: 'List name',
                      controller: _noteController,
                      textInputType: TextInputType.text,
                    ),
                    SizedBox(height: 30.h),
                    QarenGradientButton(
                      title: 'Save List',
                      textColor: Colors.white,
                      onPressed: () {},
                    ),
                    SizedBox(height: 30.h),
                    QarenBorderedButton(
                      title: 'Delete List ',
                      textColor: AppColors.red,
                      backgroundColor: AppColors.red,
                      onPressed: () {
                        _showDeleteListDialog(context);
                      },
                    ),
                  ],
                ),
              );
            },
          );
        });
  }
  Future<void> _showDeleteListDialog(BuildContext context) async {
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
                    SizedBox(height: 30.h),
                    QarenText(
                      title: 'Delete List',
                      textColor: AppColors.semiBlack,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(height: 10.h),
                    QarenText(
                      title: 'Are you sure you want to delete',
                      textAlign: TextAlign.center,
                      textColor: AppColors.gray,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    QarenText(
                      title: 'list name here',
                      textAlign: TextAlign.center,
                      textColor: AppColors.red,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(height: 30.h),
                    QarenGradientButton(
                      title: 'Delete',
                      buttonColor: AppColors.red,
                      textColor: Colors.white,
                      onPressed: () {_showDeleteItemListDialog(context);},
                    ),
                  ],
                ),
              );
            },
          );
        });
  }
  Future<void> _showDeleteItemListDialog(BuildContext context) async {
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
                    SizedBox(height: 30.h),
                    QarenText(
                      title: 'Remove Item',
                      textColor: AppColors.semiBlack,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(height: 10.h),
                    QarenText(
                      title: 'Are you sure you want to remove this item',
                      textAlign: TextAlign.center,
                      textColor: AppColors.gray,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(height: 30.h),
                    QarenGradientButton(
                      title: 'Remove',
                      buttonColor: AppColors.red,
                      textColor: Colors.white,
                      onPressed: () {_showEditListDialog(context);},
                    ),
                  ],
                ),
              );
            },
          );
        });
  }
}
