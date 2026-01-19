import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/ui/app_buttom.dart';
import '../../core/ui/app_images.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 15,
        ).copyWith(bottom: 0).r,
        height: 120.h,
        width: 360.w,
        decoration: BoxDecoration(border: Border.all(color: Color(0xffB1B1B1))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppButtom(text: 'Continue to payment', onPressed: () {}),
            SizedBox(height: 10.h),
            Text(
              'View E-Receipt',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14.sp,
                color: Color(0xffDD8560),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Payment'),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: AppImage(image: 'arrow.svg'),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppImage(image: 'succes.json', width: 130.w, height: 130.h),
            SizedBox(height: 34.h),
            Text(
              'Payment Successful!',
              style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15.h),
            Text(
              'Thank you for your purchase.',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                color: Color(0xff858585),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
