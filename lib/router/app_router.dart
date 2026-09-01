import 'package:flutter/material.dart';
import 'package:flutter_app/core/session.dart';
import 'package:flutter_app/local/injection/injection.dart';
import 'package:flutter_app/modules/spends/mobx/auth_store.dart';
import 'package:flutter_app/screens/home.dart';
import 'package:flutter_app/screens/login.dart';
import 'package:flutter_app/screens/spends.dart';
import 'package:go_router/go_router.dart';
import 'package:mobx/mobx.dart';

class AppRouter {
  static final authStore = getIt<AuthStore>();

  static final ValueNotifier<bool> isLoggedInNotifier = ValueNotifier(
    authStore.isLoggedIn,
  );

  static final GoRouter router = GoRouter(
    navigatorKey: Session.globalContext,
    initialLocation: '/home',

    refreshListenable: isLoggedInNotifier,
    routes: [
      GoRoute(path: '/login', builder: (context, state) => Login()),
      GoRoute(
        path: '/home',
        builder: (context, state) => Home(title: 'Beyond'),
      ),
      GoRoute(path: '/spends', builder: (context, state) => Spends()),
    ],
    redirect: (context, state) {
      final loggedIn = isLoggedInNotifier.value;
      final goingToLogin = state.matchedLocation == '/login';
      if (!loggedIn && !goingToLogin) return '/login';
      if (loggedIn && goingToLogin) return '/home';
      return null;
    },
  );

  static void setupListerners() {
    reaction((_) => authStore.isLoggedIn, (bool loggedIn) {
      isLoggedInNotifier.value = loggedIn;
    });
  }
}
