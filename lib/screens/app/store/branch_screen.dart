import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qaren/widgets/qaren_store.dart';
import 'package:qaren/widgets/qaren_text.dart';

class BranchScreen extends StatefulWidget {
  const BranchScreen({Key? key}) : super(key: key);

  @override
  State<BranchScreen> createState() => _BranchScreenState();
}

class _BranchScreenState extends State<BranchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: QarenText(
          title: 'Branch',
          fontSize: 17.sp,
          fontWeight: FontWeight.w600,
          textColor: Colors.black,
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: GridView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        itemCount: 10,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing: 10.h,
          crossAxisSpacing: 15.w,
          childAspectRatio: 359.w / 150.h,
        ),
        itemBuilder: (context, index) {
          return const QarenStore();
        },
      ),
    );
  }
}
