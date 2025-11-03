import 'package:flutter/material.dart';
import 'package:flutterdoc/core/di/dependency_injection.dart';
import 'package:flutterdoc/core/routing/app_router.dart';
import 'package:flutterdoc/doc_app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  setupGetIt();
  // To fix texts being hidden bug in flutter_screenutil in release mode.
  await ScreenUtil.ensureScreenSize();

  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
