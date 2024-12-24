import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/splash_model.dart';

class SplashProvider extends ChangeNotifier {
  SplashModel splashModelObj = SplashModel();

  @override
  void dispose() {
    super.dispose();
  }
}