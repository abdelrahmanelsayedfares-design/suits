import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/logic/helper_methods.dart';
import 'package:suits/core/ui/app_buttom.dart';
import 'package:suits/views/home/shipping_adress.dart';
import '../../core/ui/app_cart_item.dart';
import '../../core/ui/app_images.dart';

class CheckOutView extends StatefulWidget {
  const CheckOutView({super.key});

  @override
  State<CheckOutView> createState() => _CheckOutViewState();
}

class _CheckOutViewState extends State<CheckOutView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(24),
        height: 94.h,
        width: 360.w,
        decoration: BoxDecoration(border: Border.all(color: Color(0xffB1B1B1))),
        child: AppButtom(text: 'Continue to payment', onPressed: () {
          goTo(ShippingAdressView(),canPop: true);
        }),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Checkout'),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: AppImage(image: 'arrow.svg'),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 17).r,
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Shipping Address'),
            SizedBox(height: 26.h),
            ListTile(
              leading: AppImage(image: 'location.png', color: Colors.black),
              title: Text(
                'Home',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 29),
            Text(
              'Dakahlia, Mansoura, Al-Gamaa District,\nAl-Sabahi Street',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            SizedBox(height: 40.h),
            Text('Order List'),
            SizedBox(height: 29.h,),
            ListView.builder(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) {
              return CartItemWidget();
            },)
          ],
        ),
      ),
    );
  }
}
