import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  _LaunchScreenState createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      // BnScreenController().prepareBnScreens(context);
      // String route = SharedPreferencesController().loggedIn ? '/bottom_navigation_screen' : '/out_boarding_screen';
      Navigator.pushReplacementNamed(context, '/out_boarding_screen');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              'images/app_logo.png',
              height: 84.h,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
            'images/ads.png',
            height: 103.h,
            width: double.infinity,
          ),),
        ],
      ),
    );
  }
}
