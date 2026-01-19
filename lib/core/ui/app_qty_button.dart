import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_images.dart';

class AppQtyButton extends StatelessWidget {
  final String icon;
  final VoidCallback onTap;
  final bool isMinus;
  const AppQtyButton({
    super.key,
    required this.icon,
    required this.onTap,
    this.isMinus = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24.w,
      height: 25.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusGeometry.circular(5),
        color: isMinus ? Colors.white : Color(0xffDD8560),
      ),
      child: IconButton(
        onPressed: onTap,
        icon: AppImage(image: icon),
      ),
    );
  }
}
