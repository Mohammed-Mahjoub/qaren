import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qaren/utils/app_colors.dart';
import 'package:qaren/widgets/qaren_drop_down.dart';
import 'package:qaren/widgets/qaren_text.dart';
import 'package:qaren/widgets/qaren_text_field.dart';

class SignupMinorInfoPage extends StatefulWidget {
  const SignupMinorInfoPage({Key? key}) : super(key: key);

  @override
  State<SignupMinorInfoPage> createState() => _SignupMinorInfoPageState();
}

class _SignupMinorInfoPageState extends State<SignupMinorInfoPage> {
  late TextEditingController _dateTextController;
  String? _gender;
  DateTime dateTime = DateTime.now();

  @override
  void initState() {
    super.initState();
    _dateTextController = TextEditingController();
  }

  @override
  void dispose() {
    _dateTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          SizedBox(height: 15.h),
          QarenTextField(
            label: 'Birthdate',
            icon: SvgPicture.asset(
              'images/calendar.svg',
              fit: BoxFit.scaleDown,
              height: 24,
              width: 24,
              color: AppColors.gray,
            ),
            onTap: () async{
              DateTime? newDate = await showDatePicker(
                context: context,
                initialDate: dateTime,
                firstDate: DateTime(1900),
                lastDate: DateTime(2900),
              );
              if(newDate==null){return;}
              else{
                setState(() {
                  dateTime = newDate;
                  _dateTextController.text = '${dateTime.day.toString()}/${dateTime.month.toString()}/${dateTime.year.toString()}';
                });
              }
            },
            controller: _dateTextController,
            textInputType: TextInputType.datetime,
            readOnly: true,
          ),
          const QarenDropDown<int>(
            hint: 'Job',
            marginTop: 15,
            items: [
              DropdownMenuItem(
                value: 1,
                child: Text("Delivery"),
              ),
              DropdownMenuItem(
                value: 2,
                child: Text("Paint man"),
              ),
              DropdownMenuItem(
                value: 3,
                child: Text("Electrician"),
              ),
              DropdownMenuItem(
                value: 4,
                child: Text("Builder"),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 11.w),
            child: Row(
              children: [
                const QarenText(
                  title: 'Gender:',
                  textColor: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(width: 10.w),
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
                  value: _gender == 'M',
                  onChanged: (bool? value) {
                    if (value != null) {
                      setState(() => {_gender = 'M'});
                    }
                  },
                ),
                InkWell(
                  onTap: () {
                    setState(() => {_gender = 'M'});
                  },
                  child: const QarenText(
                    title: 'Male',
                    textColor: Colors.black,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(width: 10),
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
                  value: _gender == 'F',
                  onChanged: (bool? value) {
                    if (value != null) {
                      setState(() => {_gender = 'F'});
                    }
                  },
                ),
                InkWell(
                  onTap: () {
                    setState(() => {_gender = 'F'});
                  },
                  child: const QarenText(
                    title: 'Female',
                    textColor: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
