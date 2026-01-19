import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_images.dart';
import 'app_qty_button.dart';

class CartItemWidget extends StatefulWidget {
  const CartItemWidget({super.key});

  @override
  State<CartItemWidget> createState() => _CartItemWidgetState();
}

class _CartItemWidgetState extends State<CartItemWidget> {
  int countIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 143.h,
      width: double.infinity,
      child:
      Row(
        children: [
          AppImage(
            image:
                'https://i.pinimg.com/736x/f0/df/44/f0df441d651262b7f29301492e96d38a.jpg',
            height: 143.h,
            width: 121.w,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12).r,
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
                SizedBox(height: 22.h),
                Text(
                  'Size:xl',
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff767676),
                  ),
                ),
                SizedBox(height: 15.h),
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
     AppQtyButton(icon: 'minus.svg', onTap: (){
       if(countIndex>1){
         setState(() {
           countIndex--;
         });
       }
     },isMinus: true,),
          SizedBox(width: 9.w),
          Text(
            countIndex.toString(),
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
          ),
          SizedBox(width: 9.w),
          AppQtyButton(icon: 'plus.svg',onTap: (){
            setState(() {
              countIndex++;
            });
            
          },),
        ],
      ),
    );
  }
}
