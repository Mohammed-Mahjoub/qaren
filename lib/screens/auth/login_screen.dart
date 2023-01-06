import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qaren/utils/app_colors.dart';
import 'package:qaren/widgets/qaren_bordered_button.dart';
import 'package:qaren/widgets/qaren_gradient_button.dart';
import 'package:qaren/widgets/qaren_or_separator.dart';
import 'package:qaren/widgets/qaren_social.dart';
import 'package:qaren/widgets/qaren_text.dart';
import 'package:qaren/widgets/qaren_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _emailTextController;
  late TextEditingController _passwordTextController;
  bool _rememberMe = false;
  bool obscure = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailTextController = TextEditingController();
    _passwordTextController = TextEditingController();
  }

  @override
  void dispose() {
    _emailTextController.dispose();
    _passwordTextController.dispose();
    super.dispose();
  }

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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsetsDirectional.only(
                start: 16.w,
                end: 16.w,
                top: 35.h,
                bottom: 20.h,
              ),
              padding: EdgeInsetsDirectional.only(
                top: 25.h,
                bottom: 30.h,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 0),
                    blurRadius: 60,
                    color: const Color(0xFF3A3A3A).withOpacity(0.07),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                      start: 16.w,
                      end: 16.w,
                    ),
                    child: Column(
                      children: [
                        const QarenText(
                          title: 'Sign In',
                          textColor: AppColors.darkBlue,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                        SizedBox(height: 45.h),
                        QarenTextField(
                          label: 'Email',
                          suffixIcon: 'ic_email',
                          controller: _emailTextController,
                          textInputType: TextInputType.emailAddress,
                        ),
                        SizedBox(height: 15.h),
                        QarenTextField(
                          label: 'Password',
                          icon: obscure ?const Icon(Icons.visibility_outlined,color: AppColors.gray,): const Icon(Icons.visibility_off_outlined,color: AppColors.gray,),
                          onTap: (){
                            setState(() {
                              obscure = !obscure;
                            });
                          },
                          controller: _passwordTextController,
                          textInputType: TextInputType.text,
                          obscureText: obscure,
                          minLines: 1,
                          maxLines: 1,
                          expands: false,
                        ),
                        Row(
                          children: [
                            Checkbox(
                              side: const BorderSide(
                                color: Colors.grey,
                                width: 1,
                              ),
                              checkColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                              fillColor: MaterialStateProperty.resolveWith(
                                  (states) => AppColors.darkBlue),
                              value: _rememberMe,
                              onChanged: (bool? value) {
                                if (value != null) {
                                  setState(() => _rememberMe = value);
                                }
                              },
                            ),
                            InkWell(
                              onTap: () {
                                setState(() => _rememberMe = !_rememberMe);
                              },
                              child: const QarenText(
                                title: 'Remember me',
                                textColor: AppColors.gray,
                                fontSize: 12,
                              ),
                            ),
                            Expanded(
                              child: TextButton(
                                onPressed: () => Navigator.pushNamed(
                                    context, '/forget_password_screen'),
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  alignment: AlignmentDirectional.centerEnd,
                                  shadowColor: Colors.transparent,
                                ),
                                child: Text(
                                  'forget password?',
                                  style: GoogleFonts.poppins(
                                    fontSize: 12.sp,
                                    color: AppColors.gray,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 20),
                        QarenGradientButton(
                          title: 'Sign In',
                          onPressed: () => Navigator.pushReplacementNamed(
                              context, '/main_screen'),
                        ),
                        SizedBox(height: 28.h),
                      ],
                    ),
                  ),
                  const QarenOrSeparator(),
                  SizedBox(height: 31.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      QarenSocial(
                        iconName: 'ic_apple',
                        onTap: () {},
                      ),
                      QarenSocial(
                          iconName: 'ic_goole',
                          marginHorizontal: 19.2,
                          onTap: () {}),
                      QarenSocial(
                        iconName: 'ic_facebook',
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.w),
              child: Column(
                children: [
                  QarenBorderedButton(
                    title: 'Sing Up',
                    onPressed: () {
                      Navigator.pushNamed(context, '/signup_screen');
                    },
                  ),
                  SizedBox(height: 20.h),
                  QarenBorderedButton(
                    title: 'Continue Without Log in',
                    onPressed: () =>
                        Navigator.pushReplacementNamed(context, '/main_screen'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
