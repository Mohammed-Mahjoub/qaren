import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qaren/utils/app_colors.dart';
import 'package:qaren/utils/app_colors.dart';
import 'package:qaren/widgets/qaren_text_field.dart';

class SignupInfoPage extends StatefulWidget {
  const SignupInfoPage({Key? key}) : super(key: key);

  @override
  State<SignupInfoPage> createState() => _SignupInfoPageState();
}

class _SignupInfoPageState extends State<SignupInfoPage> {
  late TextEditingController _firstNameTextController;
  late TextEditingController _lastTextController;
  late TextEditingController _emailTextController;
  late TextEditingController _passwordNameTextController;
  late TextEditingController _passwordConfirmationTextController;
  bool obscure = true;
  bool obscure2 = true;

  @override
  void initState() {
    super.initState();
    _firstNameTextController = TextEditingController();
    _lastTextController = TextEditingController();
    _emailTextController = TextEditingController();
    _passwordNameTextController = TextEditingController();
    _passwordConfirmationTextController = TextEditingController();
  }

  @override
  void dispose() {
    _firstNameTextController.dispose();
    _lastTextController.dispose();
    _emailTextController.dispose();
    _passwordNameTextController.dispose();
    _passwordConfirmationTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: QarenTextField(
                  label: 'First Name',
                  controller: _firstNameTextController,
                  textInputType: TextInputType.text,
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: QarenTextField(
                  label: 'Last Name',
                  controller: _lastTextController,
                  textInputType: TextInputType.text,
                ),
              )
            ],
          ),
          SizedBox(height: 15.h),
          QarenTextField(
            label: 'Email',
            suffixIcon: 'ic_email',
            controller: _emailTextController,
            textInputType: TextInputType.emailAddress,
          ),
          SizedBox(height: 15.h),
          QarenTextField(
            label: 'Password',
            icon: obscure ? const Icon(Icons.visibility_outlined,color: AppColors.gray,): const Icon(Icons.visibility_off_outlined,color: AppColors.gray,),
            controller: _passwordNameTextController,
            textInputType: TextInputType.text,
            obscureText: obscure,
            onTap: () {
              setState(() {
                obscure = !obscure;
              });
            },
          ),
          SizedBox(height: 15.h),
          QarenTextField(
            label: 'Re-type password',
            icon: obscure2 ?const Icon(Icons.visibility_outlined,color: AppColors.gray,): const Icon(Icons.visibility_off_outlined,color: AppColors.gray,),
            controller: _passwordConfirmationTextController,
            textInputType: TextInputType.text,
            obscureText: obscure2,
            onTap: () {
              setState(() {
                obscure2 = !obscure2;
              });
            },
          ),
        ],
      ),
    );
  }
}
