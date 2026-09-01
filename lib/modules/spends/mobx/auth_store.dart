import 'package:Beyond/local/injection/models/user_entity.dart';
import 'package:Beyond/utils/validators.dart';
import 'package:flutter/material.dart';
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

  @observable
  dynamic errors = {'email': '', 'password': ''};

  @action
  bool validateEmail(text) {
    if (text.isEmpty) {
      errors['email'] = "Campo email é obrigatório";
      return false;
    } else if (Validadors.isEmail(text)) {
      errors['email'] = '';
      return true;
    } else {
      errors['email'] = "Email inválido";
      return false;
    }
  }

  @action
  bool validatePassword(text) {
    if (text.isEmpty) {
      errors['password'] = "Campo senha é obrigatório";
      return false;
    } else if (Validadors.isPassword(text)) {
      errors['password'] = '';
      return true;
    } else {
      errors['password'] = "Senha deve ter pelo menos 6 caracteres";
      return false;
    }
  }

  @action
  void logIn(String email, String password) {
    if (!validateEmail(email) || !validatePassword(password)) {
      isLoading = false;
      return;
    }
    isLoading = true;
    isLoggedIn = true;
    errorMessage = '';
    try {
      user = UserEntity(userName: email, email: email, password: password);
    } catch (e) {
      errorMessage = e.toString();
    }
    isLoading = false;
  }

  @action
  void logOut() {
    isLoggedIn = false;
    user = UserEntity.empty();
    errorMessage = '';
  }
}
