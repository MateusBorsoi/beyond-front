import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/core/session.dart';
import 'package:flutter_app/layout/theme.dart';
import 'package:flutter_app/local/injection/injection.dart';
import 'package:flutter_app/modules/spends/mobx/spends.dart';
import 'package:flutter_app/router/app_router.dart';

final spends = Spends();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  AppRouter.setupListerners();
  runApp(const MyApp());

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.deepPurple,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
    ),
  );
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
