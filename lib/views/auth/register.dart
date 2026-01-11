import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/ui/app_buttom.dart';
import 'package:suits/core/ui/app_check_box.dart';
import 'package:suits/core/ui/app_input.dart';
import 'package:suits/core/ui/app_succes.dart';

import '../../core/ui/app_images.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Sign Up'),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: AppImage(image: 'arrow.svg'),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: 17,
          vertical: 32,
        ).copyWith(bottom: 0).r,
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            AppInput(hint: 'Enter your name', icon: 'user.png'),
            SizedBox(height: 16.h),
            AppInput(hint: 'Enter your email', icon: 'email.png'),
            SizedBox(height: 16.h),
            AppInput(
              hint: 'Enter your password',
              icon: 'password.png',
              isBass: true,
            ),
            SizedBox(height: 16.h),
            AppCheckBox(),
            SizedBox(height: 38.h),
            AppButtom(text: 'Sign Up', onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AppSucces(text: 'Sign In'),
              );

            }),
            SizedBox(height: 32.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Have an account?',
                  style: TextStyle(
                    color: Color(0xff717784),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffDD8560),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
