import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qaren/utils/app_colors.dart';
import 'package:qaren/widgets/qaren_gradient_button.dart';
import 'package:qaren/widgets/qaren_text.dart';

class QrCodeScreen extends StatefulWidget {
  const QrCodeScreen({Key? key}) : super(key: key);

  @override
  State<QrCodeScreen> createState() => _QrCodeScreenState();
}

class _QrCodeScreenState extends State<QrCodeScreen> {
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
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 25.h, left: 16.w, right: 16.w),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const QarenText(
                title: 'Scan Product Code',
                textColor: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.normal,
              ),
              Container(
                margin: EdgeInsets.only(top: 91.h),
                height: 342.h,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: AppColors.blue,
                  ),
                ),
              ),
              SizedBox(height: 90.h),
              QarenGradientButton(
                title: 'Show Result',
                onPressed: () => Navigator.pushNamed(context, '/qr_code_result_screen'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
