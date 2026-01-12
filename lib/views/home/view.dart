import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/views/home/cart.dart';
import 'package:suits/views/home/favorite.dart';
import 'package:suits/views/home/home.dart';
import 'package:suits/views/home/profile.dart';
import '../../core/ui/app_images.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final list = [
    _Model(icon: 'home.svg', page: HomePageView()),
    _Model(icon: 'cart_.svg', page: CartView()),
    _Model(icon: 'favorite.svg', page: FavoriteView()),
    _Model(icon: 'profile.svg', page: ProfileView()),
  ];

  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: current,
        onTap: (index) {
          setState(() {
            current = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        items: List.generate(
          list.length,
          (index) => BottomNavigationBarItem(
            label: '',
            icon: AppImage(
              image: list[index].icon,
              width: 20.w,
              height: 17.5.h,
              color: current == index ? const Color(0xffDD8560) : null,
            ),
          ),
        ),
      ),
      body: list[current].page,
    );
  }
}

class _Model {
  final String icon;
  final Widget page;

  _Model({required this.icon, required this.page});
}
