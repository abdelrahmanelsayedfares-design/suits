import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/logic/helper_methods.dart';
import 'package:suits/core/ui/app_buttom.dart';
import 'package:suits/core/ui/app_input.dart';
import '../../core/ui/app_cart_item.dart';
import '../../core/ui/app_images.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../core/ui/app_item_dialog.dart';
import 'check_out.dart';

class MyCardsView extends StatefulWidget {
  const MyCardsView({super.key});

  @override
  State<MyCardsView> createState() => _MyCardsViewState();
}

class _MyCardsViewState extends State<MyCardsView> {
  List<int> cartItems = List.generate(10, (index) => index);
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
              AppButtom(text: 'Proceed to Checkout', onPressed: () {
                goTo(CheckOutView(),canPop: true);
              }),
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
            return Divider(thickness: 1, color: Colors.grey.shade300);
          },
          itemCount: cartItems.length,
          itemBuilder: (context, index) {
            return Slidable(
              key: ValueKey(cartItems[index]),
              endActionPane: ActionPane(
                motion: StretchMotion(),
                extentRatio: 0.25,
                children: [
                  SlidableAction(
                    onPressed: (context) async {
                      final result = await showDialog<bool>(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            insetPadding: EdgeInsets.symmetric(horizontal: 20).r,
                            content: ConstrainedBox(
                              constraints: BoxConstraints(
                                maxWidth: 320.w,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text('Remove from card?'),
                                  SizedBox(height: 26.h),
                                  Divider(color: Color(0xffB5B5B5), height: 2),
                                  SizedBox(height: 51.h),
                                  CartItemDialogWidget(),
                                  SizedBox(height: 61.h),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment. spaceBetween,
                                    children: [
                                      AppButtom(
                                        text: 'Cancel',
                                        colorText: true,
                                        onPressed: () {
                                          Navigator.pop(context, false);
                                        },
                                        color: Color(0xffD3D3D3),
                                      ),

                                      AppButtom(
                                        text: 'Yes,Remove',
                                        onPressed: () {
                                          Navigator.pop(context, true);
                                        },

                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );

                      if (result == true) {
                        setState(() {
                          cartItems.removeAt(index);
                        });
                      }
                    },
                    backgroundColor: Color(0xffDB5050).withValues(alpha: .50),
                    foregroundColor: Colors.red,
                    icon: Icons.delete_rounded,
                    label: '',
                  ),
                ],
              ),

              child: CartItemWidget(),

            );
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
