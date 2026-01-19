import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/ui/app_buttom.dart';
import 'package:suits/core/ui/app_input.dart';

import '../../core/ui/app_images.dart';

class AddAddressView extends StatelessWidget {
  const AddAddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Add Address'),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: AppImage(image: 'arrow.svg'),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: 17,
          vertical: 36,
        ).copyWith(bottom: 0).r,
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppInput(label: 'Title'),
            AppInput(label: 'Address'),
            AppInput(label: 'Building No'),
            AppInput(label: 'Floor No'),
            AppInput(label: 'Apartment No'),
            SizedBox(height: 127.h),
            AppButtom(text: 'Save', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
