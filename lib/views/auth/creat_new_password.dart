import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/logic/helper_methods.dart';
import 'package:suits/core/ui/app_buttom.dart';
import 'package:suits/core/ui/app_input.dart';
import 'package:suits/core/ui/app_succes.dart';
import 'package:suits/views/auth/login.dart';

import '../../core/ui/app_images.dart';

class CreatNewPasswordiew extends StatelessWidget {
  const CreatNewPasswordiew({super.key});

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
        padding: EdgeInsets.symmetric(
          horizontal: 17,
          vertical: 44,
        ).copyWith(bottom: 0).r,
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Text(
              'Create New Password',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              'Create your new password to login',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            SizedBox(height: 24.h),
            AppInput(
              hint: 'Enter Your Psword',
              icon: 'password.png',
              isBass: true,
            ),
            AppInput(
              hint: 'Enter Your Psword',
              icon: 'password.png',
              isBass: true,
            ),
            SizedBox(height: 20.h),
            AppButtom(
              text: 'Create Password',
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) =>
                      AppSucces(text: 'Sign In', onpressd: () {
                        goTo(LoginView(),canPop: false);
                      }),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
