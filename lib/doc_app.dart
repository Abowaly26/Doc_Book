import 'package:doctor/core/app_router.dart';
import 'package:doctor/core/routes.dart';
import 'package:doctor/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  final AppRouter router;
  const DocApp({super.key, required this.router});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.onBoardingScreen,
        title: 'Doc App',
        theme: ThemeData(
          primaryColor: ColorManger.primaryColor,
          scaffoldBackgroundColor: Colors.white,
        ),
        onGenerateRoute: router.generateRoute,
      ),
    );
  }
}
