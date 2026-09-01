import 'package:Beyond/router/navigation.dart';
import 'package:Beyond/services/feature_toggle.dart';
import 'package:flutter/material.dart';

class Session {
  static final globalContext = GlobalKey<NavigatorState>();
  static final navigation = Navigation();
  static FeatureToggle featureToggle = FeatureToggle();
}
