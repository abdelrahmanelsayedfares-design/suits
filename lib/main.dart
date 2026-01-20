import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/views/splash.dart';
import 'core/logic/helper_methods.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 800),
      minTextAdapt: true,
      // splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          navigatorKey: navigatorKey,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(foregroundColor: Color(0xffDD8560)),
            ),
            textTheme: TextTheme(
              titleMedium: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 24.sp,
                color: Color(0xff101623),
              ),
              titleSmall:TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ) ,
              bodySmall: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xffA1A8B0),
              ),
              bodyMedium: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              labelSmall: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            // inputDecorationTheme: InputDecorationTheme(
            //   fillColor: Colors.white,
            //   filled: true,
            //   focusedBorder: OutlineInputBorder(
            //     borderRadius: BorderRadius.circular(24),
            //     borderSide: BorderSide(color: Color(0xffE5E7EB)),
            //   ),
            //   enabledBorder: OutlineInputBorder(
            //     borderRadius: BorderRadius.circular(24),
            //     borderSide: BorderSide(color: Color(0xffE5E7EB)),
            //   ),
            // ),
            appBarTheme: AppBarTheme(
              elevation: 0,
              scrolledUnderElevation: 0,
              backgroundColor: Color(0xffF4F5F7),
              titleTextStyle: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18.sp,
                color: Color(0xff101623),
              ),
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                // fixedSize: Size(326, 56),
                backgroundColor: Color(0xffDD8560),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.r),
                ),
              ),
            ),
           scaffoldBackgroundColor: Color(0xffF4F5F7)
          ),
          home: SplashView(),
        );
      },
    );
  }
}
