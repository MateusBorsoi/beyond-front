import 'package:Beyond/core/session.dart';
import 'package:Beyond/layout/theme.dart';
import 'package:Beyond/local/injection/injection.dart';
import 'package:Beyond/modules/spends/mobx/spends.dart';
import 'package:Beyond/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final spends = Spends();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  AppRouter.setupListerners();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      theme: Session.featureToggle.hasLightMode
          ? Themes.lightTheme
          : Themes.darkTheme,
      darkTheme: Session.featureToggle.hasDarkMode ? Themes.darkTheme : null,
    );
  }
}
