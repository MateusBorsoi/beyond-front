import 'package:flutter/material.dart';
import 'package:flutter_app/local/injection/injection.dart';
import 'package:flutter_app/modules/spends/mobx/auth_store.dart';
import 'package:flutter_app/screens/home.dart';
import 'package:flutter_app/screens/login.dart';
import 'package:go_router/go_router.dart';
import 'package:mobx/mobx.dart';

class AppRouter {
  static final authStore = getIt<AuthStore>();

  static final ValueNotifier<bool> isLoggedInNotifier = ValueNotifier(
    authStore.isLoggedIn,
  );

  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => Home(title: 'Flutter App'),
      ),
      GoRoute(path: '/login', builder: (context, state) => Login()),
    ],
    redirect: (context, state) {
      final loggedIn = isLoggedInNotifier.value;
      final goingToLogin = state.matchedLocation == '/login';
      if (!loggedIn && !goingToLogin) return '/login';
      if (loggedIn && goingToLogin) return '/';
      return null;
    },
  );

  static void setupListerners() {
    reaction((_) => authStore.isLoggedIn, (bool loggedIn) {
      isLoggedInNotifier.value = loggedIn;
    });
  }
}
