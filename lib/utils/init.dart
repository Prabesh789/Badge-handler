import 'package:flutter/material.dart';
import 'package:icon_disappear/utils/di.dart';

class AppInit {
  static Future<void> initialize() async {
    WidgetsFlutterBinding.ensureInitialized();
    await initDependencyInjection();
  }
}
