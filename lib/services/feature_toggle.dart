import 'dart:convert';

import 'package:flutter/services.dart';

class FeatureToggle {
  bool hasLightMode = true;
  bool hasDarkMode = false;

  Future<void> getFutureToggle() async {
    final String jsonString = await rootBundle.loadString(
      "assets/feature_toggle.json",
    );
    final Map<String, dynamic> jsonMap = jsonDecode(jsonString);

    hasLightMode = jsonMap["theme"]["has_light_mode"];
    hasDarkMode = jsonMap["theme"]["has_dark_mode"];
  }
}
