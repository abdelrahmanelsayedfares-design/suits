import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:suits/core/logic/helper_methods.dart';
import 'package:suits/core/ui/app_images.dart';
import 'package:suits/views/home/view.dart';

import 'on_boarding2.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController _controller = PageController();
  final List = [
    _Model(
      image:
          'https://i.pinimg.com/originals/1a/e9/c9/1ae9c940491fe431813e4ce66a7b4976.jpg?nii=t',
      text: 'Welcome To\nFashion',
      des:
          'Discover the latest trends and exclusive styles\nfrom our top designers',
    ),
    _Model(
      image:
          'https://i.pinimg.com/736x/f0/df/44/f0df441d651262b7f29301492e96d38a.jpg',
      text: 'Explore & Shop',
      des:
          'Discover a wide range of fashion categories,\nbrowse new arrivals and shop your favourites',
    ),
    _Model(
      image:
          'https://i.pinimg.com/originals/5c/81/f7/5c81f7544b69f97a00b06c62c865bb30.jpg',
      text: 'Hi,Shop Now',
    ),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    bool islast = currentIndex == List.length - 1;
    return Scaffold(
      body: PageView.builder(
        controller: _controller,
        itemCount: List.length,
        onPageChanged: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        itemBuilder: (context, index) => Stack(
          children: [
            AppImage(image: List[index].image, height: 800.h),
            if (!islast)
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(top: 40.h, right: 20.w),
                  child: Container(
                    width: 81.w,
                    height: 41.h,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextButton(
                      onPressed: () {
                        goTo(OnBoarding2(), canPop: false);
                      },
                      child: Text('Skip',style: TextStyle(fontSize: 15.sp,color: Colors.black,fontWeight: FontWeight.w400),),
                    ),
                  ),
                ),
              ),
            Positioned(
              left: 15.w,
              bottom: 142.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    List[index].text,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 18.h),
                  if (List[index].des != null)
                    Text(
                      List[index].des!,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                ],
              ),
            ),
            Positioned(
              left: 24,
              right: 24,
              bottom: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (currentIndex > 0)
                    FloatingActionButton(
                      onPressed: () {
                        _controller.previousPage(
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.easeInOut,
                        );
                      },
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      shape: CircleBorder(
                        side: BorderSide(color: Color(0xff4E6542)),
                      ),
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: Color(0xffDD8560),
                      ),
                    ),
                  Expanded(
                    child: Center(
                      child: SmoothPageIndicator(
                        controller: _controller,
                        count: 3,
                        effect: WormEffect(
                          activeDotColor: Color(0xffDD8560),
                          dotColor: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      if (currentIndex == List.length - 1) {
                        goTo(OnBoarding2(), canPop: false);
                      } else {
                        _controller.nextPage(
                          duration: Duration(milliseconds: 400),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                    backgroundColor: Color(0xffDD8560),
                    shape: CircleBorder(),
                    child: Icon(Icons.arrow_forward_ios, color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Model {
  final String image, text;
  final String? des;

  _Model({required this.image, required this.text, this.des});
}
