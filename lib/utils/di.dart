import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:icon_disappear/utils/batch_handler.dart';

final GetIt inject = GetIt.instance;
Future<void> initDependencyInjection() async {
  WidgetsFlutterBinding.ensureInitialized();
  _batchHandling();
}

void _batchHandling() {
  inject.registerLazySingleton(
    () => BadgeNotifier(),
  );
}
