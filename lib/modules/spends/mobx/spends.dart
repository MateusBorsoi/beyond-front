import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
part 'spends.g.dart';

@singleton
class Spends = SpendsBase with _$Spends;

abstract class SpendsBase with Store {
  @observable
  int value = 0;
  TextEditingController controller = TextEditingController();

  void dispose() {
    controller.dispose();
  }

  @action
  void increment() {
    value++;
    controller.text = value.toString();
  }

  @action
  void decrement() {
    if (value > 0) {
      value--;
      controller.text = value.toString();
    }
  }

  @action
  void onManualSet(int newValue) {
    if (newValue >= 0) {
      value = newValue;
      controller.text = newValue.toString();
    }
  }
}
