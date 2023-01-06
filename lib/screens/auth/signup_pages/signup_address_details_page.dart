import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qaren/utils/app_colors.dart';
import 'package:qaren/widgets/qaren_drop_down.dart';
import 'package:qaren/widgets/qaren_text.dart';
import 'package:qaren/widgets/qaren_text_field.dart';

class SignupAddressDetailsPage extends StatefulWidget {
  const SignupAddressDetailsPage({Key? key}) : super(key: key);

  @override
  State<SignupAddressDetailsPage> createState() =>
      _SignupAddressDetailsPageState();
}

class _SignupAddressDetailsPageState extends State<SignupAddressDetailsPage> {
  late TextEditingController _addressTextController;
  late TextEditingController _streetController;
  late TextEditingController _flatController;
  late TextEditingController _homeController;
  late TextEditingController _phoneController;
  bool _agreeTerms = false;
  late TapGestureRecognizer _tapGestureRecognizer;
  double weightBrightness = 0;
  double weightMinValue = 0;
  double weightMaxValue = 100;

  @override
  void initState() {
    super.initState();
    _addressTextController = TextEditingController();
    _streetController = TextEditingController();
    _flatController = TextEditingController();
    _homeController = TextEditingController();
    _phoneController = TextEditingController();
    _tapGestureRecognizer = TapGestureRecognizer()..onTap = _navigateToTerms;
  }

  void _navigateToTerms() =>
      Navigator.pushNamed(context, '/terms_and_conditions_screen');

  @override
  void dispose() {
    _addressTextController.dispose();
    _streetController.dispose();
    _flatController.dispose();
    _homeController.dispose();
    _phoneController.dispose();
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          const QarenDropDown<int>(
            marginTop: 0,
            hint: 'Account Type',
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
            label: 'Address',
            suffixIcon: 'ic_location',
            controller: _addressTextController,
            textInputType: TextInputType.text,
          ),
          SizedBox(height: 15.h),
          QarenTextField(
            label: 'Street Name',
            controller: _streetController,
            textInputType: TextInputType.text,
          ),
          SizedBox(height: 15.h),
          QarenTextField(
            label: 'Phone Number',
            controller: _phoneController,
            textInputType: TextInputType.phone,
          ),
          SizedBox(height: 15.h),
          Row(
            children: [
              Expanded(
                child: QarenTextField(
                  label: 'Home No.',
                  controller: _homeController,
                  textInputType: TextInputType.number,
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: QarenTextField(
                  label: 'Flat No.',
                  controller: _flatController,
                  textInputType: TextInputType.number,
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          QarenText(
            title: 'KM Radius',
            fontSize: 12.sp,
            textColor: AppColors.gray,
          ),
          SizedBox(height: 10.h),
          QarenText(
            title: 'Stores will be displayed according to the radius you choose',
            fontSize: 14.sp,
            textColor: AppColors.semiBlack,
            textAlign: TextAlign.center,
          ),
          Row(
            children: [
              Expanded(
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    trackHeight: 15,
                    overlayColor: Colors.transparent,
                    thumbColor: const Color(0XFF689DDE),
                    activeTrackColor: const Color(0XFF689DDE),
                    minThumbSeparation: 100,
                    rangeThumbShape: const RoundRangeSliderThumbShape(
                      enabledThumbRadius: 10,
                      disabledThumbRadius: 10,
                    ),
                  ),
                  child: Slider(
                    min: weightMinValue,
                    max: weightMaxValue,
                    inactiveColor: Colors.grey.shade300.withOpacity(0.8),
                    value: weightBrightness,
                    label: weightBrightness.abs().toString(),
                    onChanged: (val) {
                      setState(() {
                        weightBrightness = val;
                      });
                    },
                  ),
                ),
              ),
              Text('${weightBrightness.round()}'),
            ],
          ),
          SizedBox(height: 20.h),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Row(
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
                  value: _agreeTerms,
                  onChanged: (bool? value) {
                    if (value != null) {
                      setState(() => {_agreeTerms = value});
                    }
                  },
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _agreeTerms = !_agreeTerms;
                    });
                  },
                  child: RichText(
                    text: TextSpan(
                      text: 'Agree ',
                      style: GoogleFonts.poppins(
                        color: AppColors.gray,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.normal,
                      ),
                      children: [
                        TextSpan(
                          text: 'Terms & Conditions',
                          recognizer: _tapGestureRecognizer,
                          style: GoogleFonts.poppins(
                            color: AppColors.blue,
                            fontSize: 13.sp,
                            fontWeight: FontWeight.normal,
                            decoration: TextDecoration.underline,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
