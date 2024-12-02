import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soulsync/core/routing/app_router.dart';
import 'package:soulsync/soul_sync.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  ScreenUtil.ensureScreenSize;
  runApp(SoulSync(
    appRouter: AppRouter(),
  ));
}

