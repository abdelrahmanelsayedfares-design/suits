import 'package:flutter/material.dart';
import 'package:suits/core/ui/app_images.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Container(
            color: Color(0xffDD8560),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppImage(image: 'splash.svg'),
                Text(
                  'suits',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Waterfall',
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
