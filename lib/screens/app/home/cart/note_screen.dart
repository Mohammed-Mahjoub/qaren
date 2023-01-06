import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qaren/utils/app_colors.dart';
import 'package:qaren/widgets/qaren_text.dart';

class NoteScreen extends StatefulWidget {
  const NoteScreen({Key? key}) : super(key: key);

  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: QarenText(
          title: 'Notes',
          textColor: AppColors.semiBlack,
          fontSize: 17.sp,
          fontWeight: FontWeight.w600,
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
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        children: [
          SizedBox(height: 25.h),
          Align(
            alignment: Alignment.centerLeft,
            child: QarenText(
              title: 'Note:',
              textColor: AppColors.semiBlack,
              fontSize: 16.sp,
            ),
          ),
          SizedBox(height: 5.h),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0XFFB8B7B7), width: 1),
              borderRadius: BorderRadius.circular(25.r),
            ),
            child: const Padding(
              padding: EdgeInsets.all(16),
              child: QarenText(
                title:
                    'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et.',
                textAlign: TextAlign.start,
                fontSize: 14,
                textColor: Color(0XFF979696),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
