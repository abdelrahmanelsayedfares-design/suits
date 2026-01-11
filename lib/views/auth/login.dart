import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/ui/app_buttom.dart';
import 'package:suits/core/ui/app_succes.dart';

import '../../core/ui/app_images.dart';
import '../../core/ui/app_input.dart';

class LoginView extends StatefulWidget {
  LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: AppImage(image: 'arrow.svg'),
        ),
        title: Text('Login'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 17).r,
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Text('Hi Welcome back, you’ve been missed')),
            SizedBox(height: 39.h),
            AppInput(icon: 'email.png', hint: 'Enter your email'),
            AppInput(
              icon: 'password.png',
              hint: 'Enter your passwords',
              isBass: true,
            ),
            SizedBox(height: 10.h),
            TextButton(
              onPressed: () {},
              child: Align(
                alignment: AlignmentDirectional.centerEnd,
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffDD8560),
                  ),
                ),
              ),
            ),
            SizedBox(height: 22.h),
            AppButtom(
              text: 'Sign In',
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AppSucces(text: 'Go to home',isFromLogin: true,),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don’t have an account?'),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffDD8560),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(child: Divider()),
                Text(
                  'Ok',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffA1A8B0),
                  ),
                  textAlign: TextAlign.center,
                ),
                Expanded(child: Divider()),
              ],
            ),
            SizedBox(height: 30.h),
            _AppAuth(
              image: 'google.png',
              text: 'Sign in with google',
              onTap: () {},
            ),
            SizedBox(height: 16.h),
            _AppAuth(
              image: 'apple.png',
              text: 'Sign in with Apple',
              onTap: () {},
            ),
            SizedBox(height: 16.h),
            _AppAuth(
              image: 'email.png',
              text: 'Sign in with Facebook',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class _AppAuth extends StatelessWidget {
  final String image, text;
  final void Function() onTap;

  const _AppAuth({
    super.key,
    required this.image,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 326.w,
        height: 56.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          border: Border.all(color: Color(0xffE5E7EB), width: 1),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 18,
          ).copyWith(right: 0),
          child: Row(
            children: [
              AppImage(image: image, width: 20.w, height: 20.h),
              Expanded(
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff000000),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
