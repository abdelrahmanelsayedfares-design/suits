import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/logic/helper_methods.dart';
import 'package:suits/core/ui/app_images.dart';
import 'package:suits/views/on_boarding.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override

  @override
  void initState() {
    super.initState();

    goTo(OnBoardingView(),canPop: false,delayInSeconds: 3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDD8560),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppImage(image: 'splash.svg'),
          SizedBox(width: 11.w),
          Center(
            child: Text(
              'suits',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontFamily: 'Waterfall',
                color: Colors.white,
                fontSize: 100.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// floatingActionButton: currentIndex == 0
//     ? FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             currentIndex++;
//           });
//         },
//         backgroundColor: Color(0xffDD8560),
//         shape: CircleBorder(),
//         child: Icon(Icons.arrow_forward_ios, color: Colors.white),
//       )
//     : Padding(
//         padding: const EdgeInsets.all(16),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           // mainAxisSize: MainAxisSize.min,
//           children: [
//             FloatingActionButton(
//               heroTag: 'back',
//               onPressed: () {
//                 setState(() {
//                   currentIndex--;
//                 });
//               },
//               backgroundColor: Colors.transparent,
//               elevation: 0,
//               shape: CircleBorder(side: BorderSide(
//                 color:Color(0xff4E6542),
//               )),
//               child: Icon(Icons.arrow_back_ios, color: Color(0xffDD8560)),
//             ),
//             SizedBox(width: 10.w),
//             FloatingActionButton(
//               heroTag: 'next',
//               onPressed: () {
//                 setState(() {
//                   if (currentIndex < List.length - 1) currentIndex++;
//                 });
//               },
//               backgroundColor: Color(0xffDD8560),
//               shape: CircleBorder(),
//               child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
//             ),
//           ],
//         ),
//       ),