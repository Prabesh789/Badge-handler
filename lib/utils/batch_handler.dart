import 'package:flutter/foundation.dart';

final badgeNotifier = BadgeNotifier();

class BadgeNotifier extends ValueNotifier<bool> {
  BadgeNotifier() : super(true);
  void hideBagde() {
    value = false;
  }
}
