import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/logic/helper_methods.dart';
import 'package:suits/core/ui/app_buttom.dart';
import 'package:suits/core/ui/app_input.dart';
import 'package:suits/views/home/my_cards.dart';

import '../../core/ui/app_images.dart';

class PaymentMethodsView extends StatefulWidget {
  const PaymentMethodsView({super.key});

  @override
  State<PaymentMethodsView> createState() => _PaymentMethodsViewState();
}

class _PaymentMethodsViewState extends State<PaymentMethodsView> {
  int selectedValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Payment Methods'),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: AppImage(image: 'arrow.svg'),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 17,
          vertical: 23,
        ).copyWith(bottom: 0).r,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Credit & Debit Card'),
            SizedBox(height: 26.h),
            AppInput(hint: 'Add Card', icon: 'credit-card.png'),
            SizedBox(height: 22.h),
            Text('More Payment Options'),
            SizedBox(height: 21.h),
            Container(
              width: 326.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusGeometry.circular(20),
                border: Border.all(color: Color(0xffAFAFAF)),
              ),
              child: Column(
                children: [
                  _MorePayment(
                    icon: 'paypal.png',
                    text: 'Paypal',
                    onChange: (value) {
                      setState(() {
                        selectedValue = value!;
                      });
                    },
                    value: 1,
                    groupValue: selectedValue,
                  ),
                  Divider(color: Color(0xffB5B5B5)),
                  _MorePayment(
                    icon: 'apple.png',
                    text: 'Apple Pay',
                    onChange: (value) {
                      setState(() {
                        selectedValue = value!;
                      });
                    },
                    value: 2,
                    groupValue: selectedValue,
                  ),
                  Divider(color: Color(0xffB5B5B5)),
                  _MorePayment(
                    icon: 'google.png',
                    text: 'Google',
                    onChange: (value) {
                      setState(() {
                        selectedValue = value!;
                      });
                    },
                    value: 3,
                    groupValue: selectedValue,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 94.h,
        decoration: BoxDecoration(border: Border.all(color: Color(0xffB1B1B1,),width: 1)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: AppButtom(text: 'Confirm Payment', onPressed: (){
            goTo(MyCardsView(),canPop: true);
          }),
        ),
      )
    );
  }
}

class _MorePayment extends StatelessWidget {
  final String icon, text;
  final int value, groupValue;
  final void Function(int?) onChange;
  const _MorePayment({
    super.key,
    required this.icon,
    required this.text,
    required this.onChange,
    required this.value,
    required this.groupValue,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: AppImage(image: icon, width: 20.w, height: 20.h),
      title: Text(
        text,
        style: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,
          color: Color(0xff858585),
        ),
      ),
      trailing: Radio(
        value: value,
        groupValue: groupValue,
        onChanged: onChange,
      ),
    );
  }
}
