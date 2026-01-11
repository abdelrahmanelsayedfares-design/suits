import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppCheckBox extends StatefulWidget {
  const AppCheckBox({super.key});

  @override
  State<AppCheckBox> createState() => _AppCheckBoxState();
}

class _AppCheckBoxState extends State<AppCheckBox> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(8),
          ),
          activeColor: Colors.white,
          checkColor: Color(0xffDD8560),
          side: BorderSide(color: Color(0xffD9D9D9), width: 1),
          value: check,
          onChanged: (value) {
            setState(() {
              check = value!;
            });
          },
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(text: 'I agree to the medidoc '),
              TextSpan(
                text: 'Terms of Service\n',
                style: TextStyle(color: Color(0xffDD8560)),
              ),
              TextSpan(text: 'and '),
              TextSpan(
                text: 'Privacy Policy',
                style: TextStyle(color: Color(0xffDD8560)),
              ),
            ],
          ),
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: Color(0xff3B4453),
          ),
        ),
      ],
    );
  }
}
