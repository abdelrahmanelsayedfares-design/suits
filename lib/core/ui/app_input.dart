import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/ui/app_buttom.dart';
import 'app_images.dart';

class AppInput extends StatefulWidget {
  final String? icon, label, hint;
  final bool isBass;
  final bool iscolor;
  final bool isButton;
  final Color? color;
  final BorderRadius? borderRadius;

  const AppInput({
    super.key,
    this.hint,
    this.icon,
    this.isBass = false,
    this.iscolor = false,
    this.isButton = false,
    this.label,
    this.color,
    this.borderRadius,
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
          filled: true,
          fillColor: Color(0xffF9FAFB),
          focusedBorder: OutlineInputBorder(
            borderRadius: widget.borderRadius ?? BorderRadius.circular(24),
            borderSide: BorderSide(color: widget.color ?? Color(0xffE5E7EB)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: widget.borderRadius ?? BorderRadius.circular(24),
            borderSide: BorderSide(color: widget.color ?? Color(0xffE5E7EB)),
          ),
          suffixIcon: widget.isBass
              ? IconButton(
                  onPressed: () {
                    _obscureText = !_obscureText;
                    setState(() {});
                  },
                  icon: _obscureText
                      ? AppImage(
                          image: 'password_off.png',
                          width: 24.w,
                          height: 24.h,
                        )
                      : AppImage(
                          image: 'password_on.png',
                          width: 24.w,
                          height: 24.h,
                        ),
                )
              : widget.isButton
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AppButtom(
                    text: 'Apply',
                    onPressed: () {},
                    size: Size(88.96430969238281, 24),
                  ),
                )
              : null,
          hintText: widget.hint,
          labelText: widget.label,
          prefixIcon: widget.icon == null
              ? null
              : Padding(
                  padding: EdgeInsets.only(left: 19).r,
                  child: AppImage(
                    image: widget.icon!,
                    width: 24.w,
                    height: 24.h,
                    color: widget.iscolor ? Color(0xffDD8560) : null,
                  ),
                ),
        ),
      ),
    );
  }
}
