import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/ui/app_images.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: AppImage(image: 'arrow.svg'),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 17).r,
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Text(
              'Forgot Your Password?',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 24.sp,
                color: Color(0xff101623),
              ),
            ),
            SizedBox(height: 11.h),
            Text(
              'Enter your email or your phone number, we\n will send you confirmation code',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xffA1A8B0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
