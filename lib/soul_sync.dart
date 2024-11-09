import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soulsync/core/routing/app_router.dart';
import 'package:soulsync/core/routing/routes.dart';
import 'package:soulsync/core/theming/colors_manger.dart';

class SoulSync extends StatelessWidget {
  const SoulSync({super.key, required this.appRouter});
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: ScreenUtil.defaultSize,
      minTextAdapt: true,
      child: MaterialApp(
        title: 'SoulSync',
        theme: ThemeData(
          primaryColor: ColorsManger.primaryColor,
          scaffoldBackgroundColor: Colors.white,
          fontFamily: 'Raleway'
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.onBoardingView,
        onGenerateRoute: appRouter.generateRoutes,
      )
    );
  }
}