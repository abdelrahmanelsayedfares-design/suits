import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/logic/helper_methods.dart';
import 'package:suits/core/ui/app_buttom.dart';
import 'package:suits/core/ui/app_images.dart';
import 'package:suits/views/auth/login.dart';
import 'package:suits/views/home/view.dart';

class OnBoarding2 extends StatelessWidget {
  const OnBoarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 33).r,
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _BuildImage(
                        image:
                            'https://i.pinimg.com/originals/5c/81/f7/5c81f7544b69f97a00b06c62c865bb30.jpg',
                        height: 370.h,
                        width: 137.w,
                      ),
                      SizedBox(width: 53.w),
                      _BuildImage(
                        image:
                            'https://i.pinimg.com/736x/9a/ed/40/9aed403c04000924ded0f5e323c24a99.jpg',
                        width: 137.w,
                        height: 214.h,
                      ),
                    ],
                  ),

                  Positioned(
                    right: 0,
                    top: 214.h + 23.h,
                    child: _BuildImage(
                      image:
                          'https://i.pinimg.com/736x/4d/d3/6d/4dd36db2334ed622e7b475f8259c1ff4.jpg',
                      width: 141.w,
                      height: 133.h,
                      isCircle: true,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 33.h),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: 'The '),
                    TextSpan(
                      text: 'Suits App ',
                      style: TextStyle(color: Color(0xffDD8560)),
                    ),
                    TextSpan(text: 'that\nMakes Your Look Your Best'),
                  ],
                ),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 24.h),
              Text(
                'Everything you need in the world\nof fashion, old and new',
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff727272),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 61.h),
              AppButtom(text: 'Get started', onPressed: () {
                goTo(LoginView(),canPop: true);
              }),
            ],
          ),
        ),
      ),
    );
  }
}

class _BuildImage extends StatelessWidget {
  final String image;
  final double height, width;
  final bool isCircle;

  const _BuildImage({
    super.key,
    required this.image,
    required this.height,
    required this.width,
    this.isCircle=false,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(45),
      child: AppImage(
        image: image,
        width: width,
        height: height,
        isCircle: isCircle,
      ),
    );
  }
}
