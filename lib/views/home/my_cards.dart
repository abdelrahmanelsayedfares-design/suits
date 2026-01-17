import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/ui/app_buttom.dart';
import 'package:suits/core/ui/app_input.dart';
import '../../core/ui/app_cart_item.dart';
import '../../core/ui/app_images.dart';

class MyCardsView extends StatefulWidget {
  const MyCardsView({super.key});

  @override
  State<MyCardsView> createState() => _MyCardsViewState();
}

class _MyCardsViewState extends State<MyCardsView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 241.h,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusGeometry.circular(8),
          color: Color(0xffFFFFFF),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 18,
            vertical: 11,
          ).copyWith(bottom: 14).r,
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AppInput(hint: 'Promo Code', isButton: true),
              _PriceList(text: 'Sub-Total', price: '\$407.94'),
              _PriceList(text: 'Delivery Free', price: '\$25.00'),
              _PriceList(text: 'Disscount', price: '-\$35.00'),
              Text(
                '.' * 100,
                maxLines: 1,
                style: TextStyle(color: Color(0xffB5B5B5)),
              ),
              _PriceList(text: 'Total Cost', price: '\$397.94'),
              AppButtom(text: 'Proceed to Checkout', onPressed: () {}),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text('My cards'),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: AppImage(image: 'arrow.svg'),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 17,
            vertical: 33,
          ).copyWith(bottom: 0).r,
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return
                Divider(
                thickness: 1,
                color: Colors.grey.shade300,
              );
            },
            itemCount: 10,
            itemBuilder: (context, index) {
              return CartItemWidget();
            },
          ),
        ),
    );
  }
}

class _PriceList extends StatelessWidget {
  final String text, price;
  const _PriceList({super.key, required this.text, required this.price});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: Color(0xff858585),
          ),
        ),
        Text(
          price,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}

