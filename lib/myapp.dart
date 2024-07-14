
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_task/presentation/home/home_screen.dart';
import 'config/theme/appTheme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return     MaterialApp(
          home: HomeScreen(),
          debugShowCheckedModeBanner: false,
          routes:{
            //RoutesManager.productRoutes:(context) => ProductScreen(),
          },
          theme:AppTheme.lightTheme ,

        );
      },
    ) ;

  }
}