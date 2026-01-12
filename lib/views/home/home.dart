import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/ui/app_buttom.dart';
import 'package:suits/core/ui/app_images.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  final list = [
    _CountryModel(image: 'blazar.png', test: 'Blazar'),
    _CountryModel(image: 'shirt.png', test: 'Shirt'),
    _CountryModel(image: 'men_shoes.png', test: 'Men Shoes'),
    _CountryModel(image: 'women_hoes.png', test: 'Women Shoes'),
    _CountryModel(image: 'mask_group.png', test: '???'),
  ];

  final List<Categories> CategoriesModel = [
    Categories(text: 'All'),
    Categories(text: 'Newest'),
    Categories(text: 'Popular'),
    Categories(text: 'Men'),
    Categories(text: 'Women'),
  ];
  int selectedIndex = 0;
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
              SizedBox(
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
                                border: Border.all(
                                  color: Color(0xffDD8560),
                                  width: 1,
                                ),
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
              ),
              SizedBox(height: 35.h),
              Text('Flash Sale', style: Theme.of(context).textTheme.bodyMedium),
              SizedBox(height: 40.h),
              SizedBox(
                height: 24.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: CategoriesModel.length,
                  separatorBuilder: (context, index) => SizedBox(width: 12.w),
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
                          CategoriesModel[index].text,
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
            ],
          ),
        ),
      ),
    );
  }
}

class _CountryModel {
  final String image, test;

  _CountryModel({required this.image, required this.test});
}

class Categories {
  final String text;

  Categories({required this.text});
}
