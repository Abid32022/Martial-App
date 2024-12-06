import 'package:ev_martial/register_unable_provider.dart';
import 'package:ev_martial/utils/app_colors.dart';
import 'package:ev_martial/view/screens/auth/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(
    MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => RegisterUnableProvider()),
          // ChangeNotifierProvider(create: (_) => MyDataProvider2()),
        ],
        child: const MyApp()
    ),);
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(384, 814),
      minTextAdapt: true,
      splitScreenMode: true,
      // designSize: const Size(384, 812),
      builder: (context, child) {
        return GetMaterialApp(
          theme: ThemeData(
            primaryColor: AppColors.Background,
            fontFamily: 'EnnVisions',
          ),
          debugShowCheckedModeBanner: false,
          home: const SplasScreen(),
        );
      },
    );
  }
}






