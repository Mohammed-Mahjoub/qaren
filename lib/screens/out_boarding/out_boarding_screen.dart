import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:qaren/widgets/qaren_text.dart';

import '../../utils/app_colors.dart';
import '../../widgets/out_boarding_content.dart';
import '../../widgets/out_boarding_indicator.dart';

class OutBoardingScreen extends StatefulWidget {
  const OutBoardingScreen({Key? key}) : super(key: key);

  @override
  _OutBoardingScreenState createState() => _OutBoardingScreenState();
}

class _OutBoardingScreenState extends State<OutBoardingScreen> {
  int _selectedPageIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.only(
              top: 12.h, bottom: 40.h, end: 16.w, start: 16.w),
          child: Column(
            children: [
              Visibility(
                visible: _selectedPageIndex != 2,
                maintainState: true,
                maintainSize: true,
                maintainAnimation: true,
                child: Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                    onTap: () => _pageController.animateToPage(2,
                        duration: const Duration(seconds: 2),
                        curve: Curves.easeInSine),
                    child: QarenText(
                      title: 'Skip',
                      textColor: AppColors.gray,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40.h),
              Expanded(
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (int selectedPageIndex) {
                    setState(() {
                      _selectedPageIndex = selectedPageIndex;
                    });
                  },
                  children: const [
                    OutBoardingContent(
                      image: 'images/ob_img.svg',
                      title: "Qaren",
                      info:
                          "Skilled specialists in a wide range of repairs, usually around the home.",
                    ),
                    OutBoardingContent(
                      image: 'images/ob_img_2.svg',
                      title: "Share Your List",
                      info:
                          "Skilled specialists in a wide range of repairs, usually around the home.",
                    ),
                    OutBoardingContent(
                      image: 'images/ob_img_3.svg',
                      title: "Shop From Home",
                      info:
                          "Skilled specialists in a wide range of repairs, usually around the home.",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 60.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutBoardingIndicator(
                    index: 0,
                    currentIndex: _selectedPageIndex,
                  ),
                  OutBoardingIndicator(
                    index: 1,
                    currentIndex: _selectedPageIndex,
                  ),
                  OutBoardingIndicator(
                    index: 2,
                    currentIndex: _selectedPageIndex,
                  ),
                ],
              ),
              SizedBox(height: 63.h),
              if (_selectedPageIndex != 2)
                Align(
                  alignment: AlignmentDirectional.bottomEnd,
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      gradient: const LinearGradient(
                        begin: AlignmentDirectional.topStart,
                        end: AlignmentDirectional.centerEnd,
                        colors: [
                          AppColors.blue,
                          AppColors.darkBlue,
                        ],
                      ),
                    ),
                    child: ElevatedButton(
                      onPressed: () => _pageController.nextPage(
                          duration: const Duration(seconds: 1),
                          curve: Curves.easeOutSine),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        shadowColor: Colors.transparent,
                        minimumSize: Size(130.w, 50.h),
                      ),
                      child: QarenText(
                        title: 'Next',
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              if (_selectedPageIndex == 2)
                Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: const LinearGradient(
                      begin: AlignmentDirectional.topStart,
                      end: AlignmentDirectional.centerEnd,
                      colors: [
                        AppColors.blue,
                        AppColors.darkBlue,
                      ],
                    ),
                  ),
                  child: ElevatedButton(
                    onPressed: () => Navigator.pushReplacementNamed(
                        context, '/login_screen'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      minimumSize: Size(311.w, 50.h),
                      shadowColor: Colors.transparent,
                    ),
                    child: QarenText(
                      title: 'Get Started',
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
