import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qaren/utils/app_colors.dart';
import 'package:qaren/widgets/qaren_drop_down.dart';
import 'package:qaren/widgets/qaren_gradient_button.dart';
import 'package:qaren/widgets/qaren_text.dart';
import 'package:qaren/widgets/qaren_text_field.dart';

class EditEmailScreen extends StatefulWidget {
  const EditEmailScreen({Key? key}) : super(key: key);

  @override
  State<EditEmailScreen> createState() => _EditEmailScreenState();
}

class _EditEmailScreenState extends State<EditEmailScreen> {
  late TextEditingController _emailTextController;

  @override
  void initState() {
    super.initState();
    _emailTextController = TextEditingController();
  }

  @override
  void dispose() {
    _emailTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: QarenText(
          title: 'My Profile',
          textColor: AppColors.semiBlack,
          fontSize: 17.sp,
          fontWeight: FontWeight.w400,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 15.h),
              Align(
                alignment: Alignment.centerLeft,
                child: QarenText(
                  title: 'Add a new email addres',
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w600,
                  textColor: AppColors.semiBlack,
                ),
              ),
              SizedBox(height: 5.h),
              Align(
                alignment: Alignment.centerLeft,
                child: QarenText(
                  title: 'Please enter a new email addres',
                  fontSize: 15.sp,
                  textColor: AppColors.gray,
                ),
              ),
              SizedBox(height: 50.h),
              QarenTextField(
                label: 'Enter your new email',
                controller: _emailTextController,
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(height: 25.h),
              QarenGradientButton(
                title: 'Save',
                onPressed: () {},
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
