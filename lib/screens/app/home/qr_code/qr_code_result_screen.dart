import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qaren/utils/app_colors.dart';
import 'package:qaren/widgets/qaren_product.dart';
import 'package:qaren/widgets/qaren_text.dart';

class QrCodeResultScreen extends StatefulWidget {
  const QrCodeResultScreen({Key? key}) : super(key: key);

  @override
  State<QrCodeResultScreen> createState() => _QrCodeResultScreenState();
}

class _QrCodeResultScreenState extends State<QrCodeResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const QarenText(
          title: 'QR Code Scanner',
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
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 3,
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 25.h),
        itemBuilder: (context, index) {
          return QarenProduct(
            name: 'Product name here',
            superMarket: 'Super market name',
            tradeMark: 'Trade mark - Country',
            price: 25.00,
            addToCart: () {},
            favorite: () {},
          );
        },
      ),
    );
  }
}
