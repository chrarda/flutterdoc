import 'package:flutter/material.dart';
import 'package:flutterdoc/core/rouTing/app_router.dart';
import 'package:flutterdoc/doc_app.dart';

void main() {
  try {
    runApp(DocApp(appRouter: AppRouter()));
  } catch (e) {
    print("ERREUR DANS main(): $e");
  } finally {
    print("main() a été exécuté avec succès");
  }
}
