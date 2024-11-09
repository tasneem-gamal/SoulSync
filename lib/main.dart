import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soulsync/core/routing/app_router.dart';
import 'package:soulsync/soul_sync.dart';

void main() {
  ScreenUtil.ensureScreenSize;
  runApp(SoulSync(appRouter: AppRouter(),));
}

