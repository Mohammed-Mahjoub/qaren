import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qaren/models/base/bn_screen.dart';
import 'package:qaren/screens/app/home/bn_screen/home_screen.dart';
import 'package:qaren/screens/app/home/bn_screen/offers_screen.dart';
import 'package:qaren/screens/app/home/bn_screen/qaren_screen.dart';
import 'package:qaren/screens/app/home/bn_screen/stores_screen.dart';
import 'package:qaren/screens/app/home/cart/my_cart_screen.dart';
import 'package:qaren/utils/app_colors.dart';

import 'bn_screen/favorite_screen.dart';

class MainScreen extends StatefulWidget {
  const







  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<BnScreen> _bnScreens = <BnScreen>[
    const BnScreen(widget: HomeScreen(), title: 'Home'),
    const BnScreen(widget: FavoriteScreen(), title: 'Favorites'),
    const BnScreen(widget: QarenScreen(), title: 'Qaren'),
    const BnScreen(widget: OffersScreen(), title: 'Offers'),
    const BnScreen(widget: StoresScreen(), title: 'Stores'),
  ];

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
          icon: SvgPicture.asset(
            'images/ic_menu.svg',
            fit: BoxFit.scaleDown,
            width: 24.h,
            height: 24.h,
          ),
          onPressed: () => Navigator.pushNamed(context, '/settings_screen'),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/cart_screen');
            },
            icon: SvgPicture.asset(
              'images/ic_cart.svg',
              color: AppColors.semiBlack,
            ),
          ),
          IconButton(
            onPressed: () =>
                Navigator.pushNamed(context, '/notifications_screen'),
            icon: SvgPicture.asset(
              'images/ic_notification.svg',
              color: AppColors.semiBlack,
            ),
          )
        ],
      ),
      body: _bnScreens[_currentIndex].widget,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        onTap: (int currentIndex) {
          setState(() => _currentIndex = currentIndex);
        },
        selectedFontSize: 8.sp,
        unselectedFontSize: 8.sp,
        selectedItemColor: AppColors.darkBlue,
        unselectedItemColor: AppColors.semiBlack,
        selectedLabelStyle: GoogleFonts.poppins(),
        unselectedLabelStyle: GoogleFonts.poppins(),
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: SvgPicture.asset('images/ic_home.svg'),
            activeIcon: SvgPicture.asset(
              'images/ic_home.svg',
              color: AppColors.darkBlue,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Favorites',
            icon: SvgPicture.asset('images/ic_favroite.svg'),
            activeIcon: SvgPicture.asset(
              'images/ic_favroite.svg',
              color: AppColors.darkBlue,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Qaren',
            icon: SvgPicture.asset('images/ic_qaren_bn.svg'),
            activeIcon: SvgPicture.asset(
              'images/ic_qaren_bn.svg',
            ),
          ),
          BottomNavigationBarItem(
            label: 'Offers',
            icon: SvgPicture.asset('images/ic_offer.svg'),
            activeIcon: SvgPicture.asset(
              'images/ic_offer.svg',
              color: AppColors.darkBlue,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Stores',
            icon: SvgPicture.asset('images/ic_store.svg'),
            activeIcon: SvgPicture.asset(
              'images/ic_store.svg',
              color: AppColors.darkBlue,
            ),
          )
        ],
      ),
    );
  }
}
