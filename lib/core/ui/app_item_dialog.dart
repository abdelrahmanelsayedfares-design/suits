import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_images.dart';
import 'app_qty_button.dart';

class CartItemDialogWidget extends StatefulWidget {
  const CartItemDialogWidget({super.key});

  @override
  State<CartItemDialogWidget> createState() => _CartItemDialogWidgetState();
}

class _CartItemDialogWidgetState extends State<CartItemDialogWidget> {
  int countIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppImage(
          image:
              'https://i.pinimg.com/736x/f0/df/44/f0df441d651262b7f29301492e96d38a.jpg',
          width: 70.w,
          height: 80.h,
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Classic Blazar',
            style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
              ),
              SizedBox(height: 6.h),
              Text(
                'Size: XL',
                style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff767676),
                ),
              ),
              SizedBox(height: 6.h),
              Text(
                '\$83.97',
                style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffAB94A6),
                ),
              ),
            ],
          ),
        ),
        AppQtyButton(
          icon: 'minus.svg',
          onTap: () {
            if (countIndex > 1) {
              setState(() {
                countIndex--;
              });
            }
          },
          isMinus: true,
        ),
        SizedBox(width: 9.w),
        Text(
          countIndex.toString(),
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
        ),
        SizedBox(width: 9.w),
        AppQtyButton(
          icon: 'plus.svg',
          onTap: () {
            setState(() {
              countIndex++;
            });
          },
        ),
      ],
    );
  }
}
