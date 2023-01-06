import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qaren/utils/app_colors.dart';
import 'package:qaren/widgets/qaren_drop_down.dart';
import 'package:qaren/widgets/qaren_gradient_button.dart';
import 'package:qaren/widgets/qaren_text.dart';
import 'package:qaren/widgets/qaren_text_field.dart';

class AddAddressScreen extends StatefulWidget {
  const AddAddressScreen({Key? key}) : super(key: key);

  @override
  State<AddAddressScreen> createState() => _AddAddressScreenState();
}

class _AddAddressScreenState extends State<AddAddressScreen> {
  late TextEditingController _phoneController;
  late TextEditingController _phoneNumberController;
  late TextEditingController _emailTextController;
  late TextEditingController _streetController;
  late TextEditingController _homeController;
  late TextEditingController _flatController;

  @override
  void initState() {
    super.initState();
    _phoneController = TextEditingController();
    _phoneNumberController = TextEditingController();
    _emailTextController = TextEditingController();
    _streetController = TextEditingController();
    _homeController = TextEditingController();
    _flatController = TextEditingController();
  }

  @override
  void dispose() {
    _phoneController.dispose();
    _phoneNumberController.dispose();
    _emailTextController.dispose();
    _streetController.dispose();
    _homeController.dispose();
    _flatController.dispose();
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
              SizedBox(height: 25.h),
              const QarenDropDown<int>(
                marginTop: 0,
                hint: 'Choose Country',
                items: [],
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  const Expanded(
                    child: QarenDropDown<int>(
                      marginTop: 0,
                      hint: 'City',
                      items: [],
                    ),
                  ),
                  SizedBox(width: 10.w),
                  const Expanded(
                    child: QarenDropDown<int>(
                      marginTop: 0,
                      hint: 'Region',
                      items: [],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.h),
              QarenTextField(
                label: 'Enter Address',
                suffixIcon: 'ic_email',
                controller: _emailTextController,
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(height: 15.h),
              QarenTextField(
                label: 'Phone Number',
                controller: _phoneController,
                textInputType: TextInputType.phone,
              ),
              SizedBox(height: 15.h),
              QarenTextField(
                label: 'Phone Number',
                controller: _phoneNumberController,
                textInputType: TextInputType.phone,
              ),
              SizedBox(height: 15.h),
              QarenTextField(
                label: 'Street Name',
                controller: _streetController,
              ),
              SizedBox(height: 15.h),
              Row(
                children: [
                  Expanded(
                    child: QarenTextField(
                      label: 'Home No.',
                      controller: _homeController,
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: QarenTextField(
                      label: 'Flat No.',
                      controller: _flatController,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.h),
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
