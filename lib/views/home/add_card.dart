import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/ui/app_input.dart';
import '../../core/logic/helper_methods.dart';
import '../../core/ui/app_buttom.dart';
import '../../core/ui/app_images.dart';

class AddCardView extends StatelessWidget {
  const AddCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(24),
        height: 94.h,
        width: 360.w,
        decoration: BoxDecoration(border: Border.all(color: Color(0xffB1B1B1)),color: Colors.white),
        child: AppButtom(text: 'Add Card', onPressed: () {
          // goTo(ShippingAdressView(),canPop: true);
        }),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Add Card'),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: AppImage(image: 'arrow.svg'),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: 19,
          vertical: 55,
        ).copyWith(bottom: 0).r,
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppImage(image: 'visa.png'),
            SizedBox(height: 22.h),
            Text(
              'Card Holder Name',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            SizedBox(width: 9.w),
            AppInput(hint: 'Name on card'),
            SizedBox(height: 35.h),
            Text('Card Number', style: Theme.of(context).textTheme.titleSmall),
            SizedBox(height: 9.h),
            AppInput(hint: '1234 5678 9012 3456'),
            SizedBox(height: 22.h),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Expiry Date',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      SizedBox(height: 9.h),
                      AppInput(
                        hint: 'MM/YY',
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 26.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'CVV',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      SizedBox(height: 9.h),
                      AppInput(
                        hint: '***',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
