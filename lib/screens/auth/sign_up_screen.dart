import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qaren/screens/auth/signup_pages/signup_account_type_page.dart';
import 'package:qaren/screens/auth/signup_pages/signup_address_details_page.dart';
import 'package:qaren/screens/auth/signup_pages/signup_info_page.dart';
import 'package:qaren/screens/auth/signup_pages/signup_minor_info_page.dart';
import 'package:qaren/utils/app_colors.dart';
import 'package:qaren/utils/expandable_page_view.dart';
import 'package:qaren/widgets/qaren_bordered_button.dart';
import 'package:qaren/widgets/qaren_gradient_button.dart';
import 'package:qaren/widgets/qaren_text.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Image.asset(
          'images/center_logo.png',
          width: 115.w,
          height: 44.h,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
          color: Colors.black,
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            margin: EdgeInsetsDirectional.only(
              start: 16.w,
              end: 16.w,
              top: 35.h,
              bottom: 20.h,
            ),
            padding: EdgeInsetsDirectional.only(
              top: 25.h,
              bottom: 30.h,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 0),
                  blurRadius: 60,
                  color: const Color(0xFF3A3A3A).withOpacity(0.07),
                ),
              ],
            ),
            child: Column(
              children: [
                const QarenText(
                  title: 'Sign Up',
                  textColor: AppColors.darkBlue,
                  fontSize: 17,
                  height: 0,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(height: 15.h),
                ExpandablePageView(
                  controller: _pageController,
                  onPageChanged: (int currentPage) {
                    setState(() => _currentPage = currentPage);
                  },
                  // scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => [
                    const SignupAccountTypePage(),
                    const SignupInfoPage(),
                    const SignupMinorInfoPage(),
                    const SignupAddressDetailsPage()
                  ].elementAt(index),
                  itemCount: 4,
                ),
                // SizedBox(height: space.h),
                SizedBox(height: 20.h),
                Visibility(
                  visible: _currentPage != 3,
                  replacement: QarenGradientButton(
                    title: 'Sign Up',
                    margin: EdgeInsets.symmetric(horizontal: 16.h),
                    onPressed: () {
                      if (_currentPage != 3) {
                        _pageController.nextPage(
                          duration: const Duration(seconds: 1),
                          curve: Curves.easeIn,
                        );
                      }
                      else{
                        Navigator.pushNamed(context, '/professional_planes_screen');

                    }
                    },
                  ),
                  child: QarenGradientButton(
                    title: 'Next',
                    margin: EdgeInsets.symmetric(horizontal: 106.h),
                    onPressed: () {
                      if (_currentPage != 3) {
                        _pageController.nextPage(
                          duration: const Duration(seconds: 1),
                          curve: Curves.easeIn,
                        );
                      }
                    },
                  ),
                ),
                SizedBox(height: 30.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [0, 1, 2, 3].map((index) {
                    return TabPageSelectorIndicator(
                      backgroundColor: index == _currentPage
                          ? AppColors.darkBlue
                          : AppColors.gray,
                      borderColor: Colors.transparent,
                      size: 8.h,
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 32.w),
            child: QarenBorderedButton(
              title: 'Sign In',
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ],
      ),
    );
  }

  double get space {
    if (_currentPage == 0) {
      return 196;
    } else if (_currentPage == 1) {
      return 60;
    } else if (_currentPage == 2) {
      return 130;
    } else {
      return 30;
    }
  }
}
