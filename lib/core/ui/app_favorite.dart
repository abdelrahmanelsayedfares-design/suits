import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_images.dart';

class AppFavorite extends StatefulWidget {
  const AppFavorite({super.key});

  @override
  State<AppFavorite> createState() => _AppFavoriteState();
}

class _AppFavoriteState extends State<AppFavorite> {

  bool isFavorite=false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadiusDirectional.all(
                    Radius.circular(10),
                  ),
                  child: AppImage(
                    image:
                    'https://i.pinimg.com/736x/f0/df/44/f0df441d651262b7f29301492e96d38a.jpg',
                    width: double.infinity,
                    height: 147.h,
                  ),
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Text(
                      'classic blazar',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.star,
                      color: Colors.yellow[600],
                      size: 16,
                    ),
                    Text(
                      '4.9',
                      style: TextStyle(
                        color: Color(0xff979696),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 5.h),
                Text(
                  '83.97\$',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffAB94A6),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 13,
          top: 9,
          child: Container(
            width: 40.w,
            height: 40.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffFFFFFF).withValues(alpha: .50),
            ),
            child: IconButton(
              onPressed: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
              icon: Icon(
                isFavorite
                    ? Icons.favorite
                    : Icons.favorite_border,
                color: Color(0xffDD8560),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
