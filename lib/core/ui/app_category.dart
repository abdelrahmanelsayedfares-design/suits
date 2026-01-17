import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_images.dart';

class AppCategory extends StatefulWidget {
  const AppCategory({super.key});

  @override
  State<AppCategory> createState() => _AppCategoryState();
}

class _AppCategoryState extends State<AppCategory> {
  final list = [
    _CountryModel(image: 'blazar.png', test: 'Blazar'),
    _CountryModel(image: 'shirt.png', test: 'Shirt'),
    _CountryModel(image: 'men_shoes.png', test: 'Men Shoes'),
    _CountryModel(image: 'women_hoes.png', test: 'Women Shoes'),
    _CountryModel(image: 'mask_group.png', test: '???'),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: selectedIndex == index
                    ? Color(0xffDD8560).withValues(alpha: .15)
                    : Colors.transparent,
              ),
              child: Column(
                children: [
                  Container(
                    width: 50.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Color(0xffDD8560), width: 1),
                    ),
                    child: AppImage(image: list[index].image),
                  ),
                  SizedBox(height: 6.h),
                  Text(
                    list[index].test,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff676767),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _CountryModel {
  final String image, test;

  _CountryModel({required this.image, required this.test});
}
