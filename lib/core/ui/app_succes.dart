import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_buttom.dart';
import 'app_images.dart';

class AppSucces extends StatelessWidget {
  final String text;
  final bool isFromLogin;
  final void Function() onpressd;

  const AppSucces({super.key, required this.text, this.isFromLogin = false, required this.onpressd});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppImage(image: 'succes.json', width: 101.w, height: 101.h),
          SizedBox(height: 44.h),
          Text(
            isFromLogin ? 'Yeay! Welcome Back' : 'Success',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20.sp,
              color: Color(0xff101623),
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            isFromLogin
                ? 'Once again you login successfully\ninto medidoc app'
                : 'Your account has been successfully registered',
            style: TextStyle(
              color: Color(0xffA1A8B0),
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20.h),
          AppButtom(text: text, onPressed: onpressd),
        ],
      ),
    );
  }
}
