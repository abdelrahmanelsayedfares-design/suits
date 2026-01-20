import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/ui/app_input.dart';
import '../../core/ui/app_buttom.dart';
import '../../core/ui/app_images.dart';

class AddCardView extends StatefulWidget {
  const AddCardView({super.key});

  @override
  State<AddCardView> createState() => _AddCardViewState();
}

class _AddCardViewState extends State<AddCardView> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(24),
        height: 94.h,
        width: 360.w,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xffB1B1B1)),
          color: Colors.white,
        ),
        child: AppButtom(
          text: 'Add Card',
          onPressed: () {
            // goTo(ShippingAdressView(),canPop: true);
          },
        ),
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
            SizedBox(height: 9.h),
            AppInput(hint: 'Name on card',borderRadius: BorderRadius.circular(10),color: Color(0xffAFAFAF),),
            SizedBox(height: 35.h),
            Text('Card Number', style: Theme.of(context).textTheme.titleSmall),
            SizedBox(height: 9.h),
            AppInput(hint: '1234 5678 9012 3456',borderRadius: BorderRadius.circular(10),color: Color(0xffAFAFAF),),
            SizedBox(height: 22.h),
            Row(
              children: [
                _Card(title: 'Expiry Date', hint: 'MM/YY'),
                SizedBox(width: 26.w),
                _Card(title: 'CVV', hint: '***'),
              ],
            ),

            Row(
              children: [
                Checkbox(
                  checkColor: Colors.white,
                  activeColor: Color(0xffDD8560),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10),
                  ),
                  value: isCheck,
                  onChanged: (value) {
                    setState(() {
                      isCheck = value!;
                    });
                  },
                ),
                Text(
                  'Save Card',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _Card extends StatelessWidget {
  final String title, hint;
  const _Card({required this.title, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: Theme.of(context).textTheme.titleSmall),
          SizedBox(height: 9.h),
          AppInput(hint: hint,borderRadius: BorderRadius.circular(10),color: Color(0xffAFAFAF),),
        ],
      ),
    );
  }
}
