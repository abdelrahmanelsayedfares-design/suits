import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/logic/helper_methods.dart';
import 'package:suits/core/ui/app_buttom.dart';
import 'package:suits/core/ui/app_images.dart';
import 'package:suits/views/home/payment_methods.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Profile')),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: 19,
          vertical: 41,
        ).copyWith(bottom: 0).r,
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            AppImage(
              image:
                  'https://th.bing.com/th/id/R.f65a7e03386f595cd874a31bf44f2d2d?rik=Pwj0Yv%2b0uNEcQw&pid=ImgRaw&r=0',
              isCircle: true,
              width: 100.w,
              height: 100.h,
            ),
            SizedBox(height: 14.h),
            Text('Safia Ayman'),
            SizedBox(height: 41.h),
            _ModelProfile(
              icon: 'profile.svg',
              text: 'profile.svg',
              onTap: () {},
            ),
            _ModelProfile(icon: 'menu.png', text: 'My Order', onTap: () {}),
            _ModelProfile(
              icon: 'credit-card.png',
              text: 'Payment Methods',
              onTap: () {
                goTo(PaymentMethodsView(), canPop: true);
              },
            ),
            _ModelProfile(icon: 'heart.png', text: 'Wishlist', onTap: () {}),
            _ModelProfile(icon: 'setting.png', text: 'Setting', onTap: () {}),
            _ModelProfile(
              icon: 'logout.png',
              text: 'Log Out',
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: SizedBox(
                        width: 360.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Center(child: Text('Logout')),
                            SizedBox(height: 17.h),
                            Divider(color: Color(0xffB2B2B2), height: 2),
                            SizedBox(height: 23.h),
                            Text(
                              'Are You Sure You want to log out?',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffB2B2B2),
                              ),
                            ),
                            SizedBox(height: 32.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                AppButtom(
                                  text: 'Cancel',
                                  onPressed: () {
                                    Navigator.pop(context, false);
                                  },
                                  color: Color(0xffF4F5F7),
                                  colorText: true,
                                ),
                                AppButtom(
                                  text: 'Yes, Logout',
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _ModelProfile extends StatelessWidget {
  final String icon, text;
  final void Function() onTap;

  const _ModelProfile({
    required this.icon,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25).r,
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: 322.w,
          height: 53.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusGeometry.circular(8),
            color: Colors.white,
          ),
          child: ListTile(
            leading: AppImage(image: icon, color: Color(0xffDD8560)),
            title: Text(text, style: Theme.of(context).textTheme.labelSmall),
          ),
        ),
      ),
    );
  }
}
