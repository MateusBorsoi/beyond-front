import 'package:flutter/material.dart';
import 'package:flutter_app/local/injection/injection.dart';
import 'package:flutter_app/modules/spends/mobx/spends.dart';
import 'package:flutter_app/router/app_router.dart';

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
    return MaterialApp.router(routerConfig: AppRouter.router);
  }
}
