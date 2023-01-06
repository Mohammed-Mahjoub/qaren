import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qaren/widgets/qaren_category.dart';
import 'package:qaren/widgets/qaren_text.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: QarenText(
          title: 'Categories',
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
            itemCount: 7,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 22.h,
              crossAxisSpacing: 22.w,
              childAspectRatio: 100.w / 100.h,
            ),
            itemBuilder: (context, index) {
              return const QarenCategory(title: 'Top Categories');
            },
          ),
        ],
      ),
    );
  }
}
