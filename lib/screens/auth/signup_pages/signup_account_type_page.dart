import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qaren/widgets/qaren_drop_down.dart';
import 'package:qaren/widgets/qaren_text.dart';

class SignupAccountTypePage extends StatelessWidget {
  const SignupAccountTypePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children:  const [
          QarenText(
            title: 'Choose account type',
            textColor: Colors.black,
            height: 0,
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
          QarenDropDown<int>(
            hint: 'Account Type',
            items: [
              DropdownMenuItem(
                value: 1,
                child: Text("Regular"),
              ),
              DropdownMenuItem(
                value: 2,
                child: Text("Professional"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
