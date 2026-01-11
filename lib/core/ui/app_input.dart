import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_images.dart';

class AppInput extends StatefulWidget {
  final String hint, icon;
  final bool isBass;

  const AppInput({
    super.key,
    required this.hint,
    required this.icon,
    this.isBass = false,
  });

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16).r,
      child: TextFormField(
        obscureText: widget.isBass ? _obscureText : false,
        decoration: InputDecoration(
          suffixIcon: widget.isBass
              ? IconButton(
                  onPressed: () {
                    _obscureText = !_obscureText;
                    setState(() {});
                  },
                  icon: _obscureText
                      ? AppImage(image: 'password_off.png',width: 24.w,height: 24.h,)
                      : AppImage(image: 'password_on.png',width: 24.w,height: 24.h,),
                )
              : null,
          hintText: widget.hint,
          prefixIcon: Padding(
            padding: EdgeInsets.only(left: 19).r,
            child: AppImage(image: widget.icon, width: 24.w, height: 24.h),
          ),
        ),
      ),
    );
  }
}
