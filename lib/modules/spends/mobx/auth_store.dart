import 'package:flutter/material.dart';
import 'package:flutter_app/core/session.dart';
import 'package:flutter_app/local/injection/models/user_entity.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
part 'auth_store.g.dart';

@singleton
class AuthStore = AuthStoreBase with _$AuthStore;

abstract class AuthStoreBase with Store {
  @observable
  bool isLoggedIn = false;

  @observable
  bool isLoading = false;

  @observable
  UserEntity user = UserEntity.empty();

  @observable
  TextEditingController emailController = TextEditingController();

  @observable
  TextEditingController passwordController = TextEditingController();

  @observable
  String errorMessage = '';

  void dispose() {
    emailController.dispose();
    passwordController.dispose();
  }

  @action
  Future<void> logIn(String email, String password) async {
    isLoggedIn = true;
    errorMessage = '';
    try {
      user = UserEntity(userName: email, email: email, password: password);
      Session.navigation.go("/home");
    } catch (e) {
      errorMessage = e.toString();
    }
  }

  @action
  void logOut() {
    isLoggedIn = false;
    user = UserEntity.empty();
    emailController.clear();
    passwordController.clear();
    errorMessage = '';
    Session.navigation.go("/login");
  }
}
