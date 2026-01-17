import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/ui/app_favorite.dart';
import 'package:suits/core/ui/app_flash_sale.dart';
import 'package:suits/core/ui/app_images.dart';

class FavoriteView extends StatefulWidget {
  const FavoriteView({super.key});

  @override
  State<FavoriteView> createState() => _FavoriteViewState();
}

class _FavoriteViewState extends State<FavoriteView> {
  final List<Categories> categoriesModel = [
    Categories(text: 'All'),
    Categories(text: 'Blazer'),
    Categories(text: 'Shirt'),
    Categories(text: 'Pant'),
    Categories(text: 'Shoes'),
  ];
  int categoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: AppImage(image: 'arrow.svg'),
        ),
        centerTitle: true,
        title: Text('My Wishlist'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 19,
          vertical: 49,
        ).copyWith(bottom: 0).r,
        child: Column(
          children: [
            SizedBox(
              height: 24.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: categoriesModel.length,
                separatorBuilder: (context, index) => SizedBox(width: 14.w),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        categoryIndex = index;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.w,
                        vertical: 4.h,
                      ),
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
                          color: categoryIndex == index
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 32.h),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 151 / 210,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 18.98,
                ),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return AppFavorite();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
