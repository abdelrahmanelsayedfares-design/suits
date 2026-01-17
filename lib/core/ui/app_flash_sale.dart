import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppFlashSale extends StatefulWidget {
  const AppFlashSale({super.key});

  @override
  State<AppFlashSale> createState() => _AppFlashSaleState();
}

class _AppFlashSaleState extends State<AppFlashSale> {
  final List<Categories> categoriesModel = [
    Categories(text: 'All'),
    Categories(text: 'Newest'),
    Categories(text: 'Popular'),
    Categories(text: 'Men'),
    Categories(text: 'Women'),
  ];

  int categoryIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesModel.length,
        separatorBuilder: (context, index) => SizedBox(width: 12.w),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              setState(() {
                categoryIndex = index;
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: categoryIndex == index
                    ? Color(0xffDD8560)
                    : Colors.white,
              ),
              child: Text(
                categoriesModel[index].text,
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                  color: categoryIndex == index ? Colors.white : Colors.black,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class Categories {
  final String text;

  Categories({required this.text});
}
