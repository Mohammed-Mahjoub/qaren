import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../widgets/qaren_store.dart';
import '../../../../widgets/qaren_text.dart';
class CategorizedStoresScreen extends StatefulWidget {
  const CategorizedStoresScreen({Key? key, required this.title}) : super(key: key);

  final String title;


  @override
  State<CategorizedStoresScreen> createState() => _CategorizedStoresScreenState();
}

class _CategorizedStoresScreenState extends State<CategorizedStoresScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () => Navigator.pop(context),
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: QarenText(
          title: widget.title,
          textColor: Colors.black,
          fontSize: 17.sp,
          fontWeight: FontWeight.w500,
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 20.h,
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
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
        ],
      ),
    );
  }
}
