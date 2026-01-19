import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/logic/helper_methods.dart';
import 'package:suits/core/ui/app_buttom.dart';
import 'package:suits/core/ui/app_input.dart';

import '../../core/ui/app_images.dart';
import 'otp.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
                style: Theme.of(context).textTheme.titleMedium,
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
              SizedBox(height: 31.h),
              Container(
                height: 56.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: Color(0xffE5E7EB), width: 1),
                ),
                child: TabBar(
                  dividerColor: Colors.transparent,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorPadding: EdgeInsets.symmetric(
                    horizontal: 3.w,
                    vertical: 6.h,
                  ),
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(29),
                    color: Color(0xffF9FAFB),
                  ),
                  labelStyle: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  labelColor: Color(0xffDD8560),
                  unselectedLabelColor: Color(0xffA1A8B0),
                  tabs: const [
                    Tab(text: 'Email'),
                    Tab(text: 'Phone'),
                  ],
                ),
              ),
              SizedBox(height: 15.h),
              SizedBox(
                height: 200.h,
                child: TabBarView(
                  children: [
                    _TabBar(text: 'Enter Your Email', icon: 'email.png'),
                    _TabBar(text: 'Enter Your Phone', icon: 'phone.png'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TabBar extends StatelessWidget {
  final String icon, text;

  const _TabBar({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AppInput(hint: text, icon: icon, iscolor: true),
        SizedBox(height: 32.h),
        AppButtom(
          text: 'Reset Password',
          onPressed: () {
            goTo(OtpView(), canPop: true);
          },
        ),
      ],
    );
  }
}
