import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qaren/utils/app_colors.dart';
import 'package:qaren/widgets/qaren_text.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const QarenText(
          title: 'Notifications',
          textColor: Colors.black,
          fontSize: 17,
          fontWeight: FontWeight.w500,
        ),
        actions: [
          IconButton(
            onPressed: () =>
                Navigator.pushNamed(context, '/notifications_settings_screen'),
            icon: SvgPicture.asset(
              'images/ic_settings.svg',
              fit: BoxFit.scaleDown,
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 90.h),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const QarenText(
              title: 'Sorry!!\nYou don\'t have notification',
              textColor: AppColors.gray,
              fontSize: 25,
              fontWeight: FontWeight.w300,
            ),
            SizedBox(height: 112.h),
            SvgPicture.asset(
              'images/ic_empty.svg',
              fit: BoxFit.scaleDown,
            ),
          ],
        ),
      ),
    );
  }
}
