import 'package:flutter/material.dart';
import 'package:flutter_app/router/navigation.dart';
import 'package:flutter_app/services/feature_toggle.dart';

class Session {
  static final globalContext = GlobalKey<NavigatorState>();
  static final navigation = Navigation();
  static FeatureToggle featureToggle = FeatureToggle();
}
