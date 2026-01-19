import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/logic/helper_methods.dart';
import '../../core/ui/app_buttom.dart';
import '../../core/ui/app_images.dart';
import 'add_address.dart';

class ShippingAdressView extends StatelessWidget {
  const ShippingAdressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(24),
        height: 94.h,
        width: 360.w,
        decoration: BoxDecoration(border: Border.all(color: Color(0xffB1B1B1))),
        child: AppButtom(
          text: 'Apply',
          onPressed: () {
            goTo(AddAddressView(),canPop: true);
          },
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Shipping Adress'),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: AppImage(image: 'arrow.svg'),
        ),
      ),
      body: Column(
        children: [
          _ItemShopping(
            text: 'Home',
            desc: 'Dakahlia, Mansoura, Al-Gamaa District,\nAl-Sabahi Street',
          ),
          _ItemShopping(
            text: 'Office',
            desc: 'Dakahlia, Mansoura, Al-Gamaa District,\nAl-Sabahi Street',
          ),
          _ItemShopping(
            text: 'Parent’s House',
            desc: 'Dakahlia, Mansoura, Al-Gamaa District,\nAl-Sabahi Street',
          ),
          _ItemShopping(
            text: 'Parent’s House',
            desc: 'Dakahlia, Mansoura, Al-Gamaa District,\nAl-Sabahi Street',
          ),
          SizedBox(height: 36),
          InkWell(
            onTap: () {},
            child: DottedBorder(
              color: const Color(0xFFDD8560),
              strokeWidth: 1,
              dashPattern: const [10, 10],
              borderType: BorderType.RRect,
              radius: const Radius.circular(10),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 16),
                width: 328.w,
                height: 48.h,
                color: Colors.white,
                child: Text(
                  '+ Add New Shipping Adress',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFDD8560),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ItemShopping extends StatelessWidget {
  final String text, desc;
  const _ItemShopping({super.key, required this.text, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 21,
        horizontal: 17,
      ).copyWith(bottom: 0).r,
      child: SizedBox(
        height: 110.h,
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return Divider(thickness: 1, color: Colors.grey.shade300);
          },
          itemCount: 4,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    AppImage(image: 'location.png', color: Colors.black),
                    SizedBox(width: 8.w),
                    Text(text),
                  ],
                ),
                SizedBox(height: 24.h),
                Text(
                  desc,
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff727272),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
