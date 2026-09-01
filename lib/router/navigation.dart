import 'package:Beyond/core/session.dart';
import 'package:go_router/go_router.dart';

class Navigation {
  bool canPop() => Session.globalContext.currentContext!.canPop();

  Future<dynamic> push(String path, {Object? object}) async {
    return await Session.globalContext.currentState!.context.push(
      path,
      extra: object,
    );
  }

  void go(String path, {Object? object}) {
    return Session.globalContext.currentState!.context.go(path, extra: object);
  }

  void pop({Object? object, int qtdPop = 1}) {
    for (int i = 0; i < qtdPop; i++) {
      Session.globalContext.currentState!.context.pop(object);
    }
  }

  void backAll() {
    if (!canPop()) {
      return go("/login");
    }

    while (canPop()) {
      pop();
    }
  }
}
