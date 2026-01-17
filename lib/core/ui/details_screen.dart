import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/ui/app_buttom.dart';

import 'app_images.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int quantity = 1;

  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            child: AppImage(
              image:
                  'https://i.pinimg.com/736x/f0/df/44/f0df441d651262b7f29301492e96d38a.jpg',
            ),
          ),
          Positioned(
            top: 59,
            left: 12,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: AppImage(image: 'arrow.svg'),
            ),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            right: 0,
            child: Container(
              height: 375.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                color: Color(0xffF4F5F7),
              ),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 23,
                      ).copyWith(bottom: 20).r,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Famale Style',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15.sp,
                                  color: Color(0xffA4A4A4),
                                ),
                              ),
                              const Spacer(),
                              Padding(
                                padding: EdgeInsets.only(right: 12.w),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow[600],
                                      size: 16,
                                    ),
                                    SizedBox(width: 4.w),
                                    Text(
                                      '5.0',
                                      style: TextStyle(
                                        color: Color(0xff979696),
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 13.h),
                          Text(
                            'Classic Blazar',
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 25.h),
                          Text(
                            'Product Details',
                            style: Theme.of(context).textTheme.labelSmall,
                          ),
                          SizedBox(height: 18.h),
                          Text(
                            'cotton sweat shirt with a text point',
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff727272),
                            ),
                          ),
                          SizedBox(height: 23.h),
                          Row(
                            children: [
                              Text(
                                'Quality',
                                style: Theme.of(context).textTheme.labelSmall,
                              ),
                              SizedBox(width: 36.w),
                              Container(
                                width: 97.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        if (quantity > 1) {
                                          setState(() {
                                            quantity--;
                                          });
                                        }
                                      },
                                      icon: AppImage(
                                        image: 'minus.svg',
                                        width: 7.w,
                                        height: 13.h,
                                      ),
                                    ),
                                    Text(
                                      quantity.toString(),
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Expanded(
                                      child: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            quantity++;
                                          });
                                        },
                                        icon: AppImage(
                                          image: 'plus.svg',
                                          width: 7.w,
                                          height: 13.h,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 26.h),
                          Divider(color: Color(0xffB5B5B5)),
                          SizedBox(height: 26.h),
                          Row(
                            children: [
                              Text(
                                'Color:',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              _Colors(color: Color(0xff4E6542)),
                              _Colors(color: Color(0xff323232)),
                              _Colors(color: Color(0xffC11D1D)),
                              _Colors(color: Color(0xff979696)),
                            ],
                          ),
                          SizedBox(height: 28.h),
                          Row(
                            children: [
                              Text(
                                'Size:',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              SizedBox(width: 12.w),
                              _Size(text: 'S'),
                              _Size(text: 'M'),
                              _Size(text: 'L'),
                              _Size(text: 'XL'),
                            ],
                          ),
                          SizedBox(height: 9.h),
                        ],
                      ),
                    ),
                    Container(
                      height: 73.h,
                      width: double.infinity,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 16,
                        ).r,
                        child: Row(
                          children: [
                            Container(
                              width: 40.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xffDD8560),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    isFavorite = !isFavorite;
                                  });
                                },
                                icon: Icon(
                                  isFavorite
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  color: Color(0xffDD8560),
                                  size: 22,
                                ),
                              ),
                            ),
                            SizedBox(width: 27.w),
                            Expanded(
                              child: AppButtom(
                                text: 'Add To Cart',
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Colors extends StatelessWidget {
  final Color color;

  const _Colors({required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Container(
        width: 20.w,
        height: 20.h,
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      ),
    );
  }
}

class _Size extends StatelessWidget {
  final String text;

  const _Size({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Container(
        width: 30.w,
        height: 30.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xffD9D9D9).withValues(alpha: .50),
        ),
        child: Text(text, textAlign: TextAlign.center),
      ),
    );
  }
}
