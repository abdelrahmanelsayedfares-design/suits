import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/ui/app_buttom.dart';
import 'package:suits/core/ui/app_flash_sale.dart';
import 'package:suits/core/ui/app_images.dart';
import 'package:suits/core/ui/app_product_card.dart';

import '../../core/ui/app_category.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  final List<Categories> CategoriesModel = [
    Categories(text: 'All'),
    Categories(text: 'Newest'),
    Categories(text: 'Popular'),
    Categories(text: 'Men'),
    Categories(text: 'Women'),
  ];

  int categoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: 17,
            vertical: 25,
          ).copyWith(bottom: 0).r,
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hello Safia',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 40.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: AppImage(image: 'bell.png'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 28.h),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 28,
                    vertical: 14,
                  ).r,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Column(
                          children: [
                            Text(
                              'New Collection',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            Text(
                              'Disscount 50% for\nthe first transaction',
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffA1A8B0),
                              ),
                            ),
                            SizedBox(height: 18.h),
                            AppButtom(text: 'Shop Now', onPressed: () {}),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: AppImage(
                          image:
                              'https://avatars.mds.yandex.net/i?id=65a6bf390aac6adfdd459516a678bb62ef8f0d95-5257793-images-thumbs&n=13',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 28.h),
              ListTile(
                leading: Text(
                  'Categary',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                trailing: TextButton(
                  onPressed: () {},
                  child: Text(
                    'See All',
                    style: TextStyle(color: Color(0xff4E6542)),
                  ),
                ),
              ),
              SizedBox(height: 13.h),
              AppCategory(),
              SizedBox(height: 35.h),
              Text('Flash Sale', style: Theme.of(context).textTheme.bodyMedium),
              SizedBox(height: 40.h),
              AppFlashSale(),
              SizedBox(height: 44.h),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 22,
                  crossAxisSpacing: 28,
                  childAspectRatio: 147 / 151,
                ),
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return AppProductCard();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
