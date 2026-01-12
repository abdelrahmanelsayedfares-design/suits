import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:suits/core/logic/helper_methods.dart';
import 'package:suits/core/ui/app_buttom.dart';

import '../../core/ui/app_images.dart';
import 'creat_new_password.dart';

class OtpView extends StatelessWidget {
  const OtpView({super.key});

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
        padding: EdgeInsets.symmetric(horizontal: 17,vertical: 33).copyWith(bottom: 0).r,
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Text(
              'Enter Verification Code',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(height: 8.h),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: 'Enter code that we have sent to your\n '),
                  TextSpan(text: 'number'),
                  TextSpan(
                    text: ' 08528188***',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              style: Theme.of(context).textTheme.bodySmall,
            ),
            SizedBox(height: 33.h),
            PinCodeTextField(
              enableActiveFill: true,
              backgroundColor: Colors.transparent,
              appContext: context,
              length: 4,
              keyboardType: TextInputType.number,
              animationType: AnimationType.fade,
              cursorColor: const Color(0xffDD8560),
              animationDuration: const Duration(milliseconds: 10),
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              textStyle: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(10),
                fieldHeight: 64.h,
                fieldWidth: 64.w,
                borderWidth: 1,
                inactiveColor: Colors.white,
                inactiveFillColor: Colors.white,
                selectedColor: Colors.white,
                selectedFillColor: Colors.white,
                activeColor: const Color(0xffDD8560),
                activeFillColor: Colors.white,
                inactiveBorderWidth: 1,
              ),
            ),
            SizedBox(height: 31.h),
            AppButtom(text: 'Verify', onPressed: () {
              goTo(CreatNewPasswordiew(),canPop: true);
            }),
            SizedBox(height: 24.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Didn’t receive the code?',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff717784),
                  ),
                ),
                TextButton(onPressed: () {}, child: Text('Resend')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
