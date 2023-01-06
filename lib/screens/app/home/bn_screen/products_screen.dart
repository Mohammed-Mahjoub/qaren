import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qaren/screens/app/details/product_details_screen.dart';
import 'package:qaren/widgets/qaren_text.dart';
import 'package:qaren/widgets/small_qarent_product.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
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
              crossAxisCount: 2,
              mainAxisSpacing: 14.h,
              crossAxisSpacing: 17.w,
              childAspectRatio: 163.w / 220.h,
            ),
            itemBuilder: (context, index) {
              return SmallQarenProduct(
                name: 'Product name here',
                info: 'Trade mark - Country',
                startPrice: '20.00',
                endPrice: '20.00',
                addToCart: () {},
                favorite: () {},
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProductDetailsScreen(),
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
