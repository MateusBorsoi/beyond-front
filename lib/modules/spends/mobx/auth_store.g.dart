// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AuthStore on AuthStoreBase, Store {
  late final _$isLoggedInAtom = Atom(
    name: 'AuthStoreBase.isLoggedIn',
    context: context,
  );

  @override
  bool get isLoggedIn {
    _$isLoggedInAtom.reportRead();
    return super.isLoggedIn;
  }

  @override
  set isLoggedIn(bool value) {
    _$isLoggedInAtom.reportWrite(value, super.isLoggedIn, () {
      super.isLoggedIn = value;
    });
  }

  late final _$isLoadingAtom = Atom(
    name: 'AuthStoreBase.isLoading',
    context: context,
  );

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$userAtom = Atom(name: 'AuthStoreBase.user', context: context);

  @override
  UserEntity get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(UserEntity value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  late final _$emailControllerAtom = Atom(
    name: 'AuthStoreBase.emailController',
    context: context,
  );

  @override
  TextEditingController get emailController {
    _$emailControllerAtom.reportRead();
    return super.emailController;
  }

  @override
  set emailController(TextEditingController value) {
    _$emailControllerAtom.reportWrite(value, super.emailController, () {
      super.emailController = value;
    });
  }

  late final _$passwordControllerAtom = Atom(
    name: 'AuthStoreBase.passwordController',
    context: context,
  );

  @override
  TextEditingController get passwordController {
    _$passwordControllerAtom.reportRead();
    return super.passwordController;
  }

  @override
  set passwordController(TextEditingController value) {
    _$passwordControllerAtom.reportWrite(value, super.passwordController, () {
      super.passwordController = value;
    });
  }

  late final _$errorMessageAtom = Atom(
    name: 'AuthStoreBase.errorMessage',
    context: context,
  );

  @override
  String get errorMessage {
    _$errorMessageAtom.reportRead();
    return super.errorMessage;
  }

  @override
  set errorMessage(String value) {
    _$errorMessageAtom.reportWrite(value, super.errorMessage, () {
      super.errorMessage = value;
    });
  }

  late final _$errorsAtom = Atom(
    name: 'AuthStoreBase.errors',
    context: context,
  );

  @override
  dynamic get errors {
    _$errorsAtom.reportRead();
    return super.errors;
  }

  @override
  set errors(dynamic value) {
    _$errorsAtom.reportWrite(value, super.errors, () {
      super.errors = value;
    });
  }

  late final _$AuthStoreBaseActionController = ActionController(
    name: 'AuthStoreBase',
    context: context,
  );

  @override
  bool validateEmail(dynamic text) {
    final _$actionInfo = _$AuthStoreBaseActionController.startAction(
      name: 'AuthStoreBase.validateEmail',
    );
    try {
      return super.validateEmail(text);
    } finally {
      _$AuthStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  bool validatePassword(dynamic text) {
    final _$actionInfo = _$AuthStoreBaseActionController.startAction(
      name: 'AuthStoreBase.validatePassword',
    );
    try {
      return super.validatePassword(text);
    } finally {
      _$AuthStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void logIn(String email, String password) {
    final _$actionInfo = _$AuthStoreBaseActionController.startAction(
      name: 'AuthStoreBase.logIn',
    );
    try {
      return super.logIn(email, password);
    } finally {
      _$AuthStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void logOut() {
    final _$actionInfo = _$AuthStoreBaseActionController.startAction(
      name: 'AuthStoreBase.logOut',
    );
    try {
      return super.logOut();
    } finally {
      _$AuthStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoggedIn: ${isLoggedIn},
isLoading: ${isLoading},
user: ${user},
emailController: ${emailController},
passwordController: ${passwordController},
errorMessage: ${errorMessage},
errors: ${errors}
    ''';
  }
}
