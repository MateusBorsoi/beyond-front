// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spends.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Spends on SpendsBase, Store {
  late final _$valueAtom = Atom(name: 'SpendsBase.value', context: context);

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  late final _$SpendsBaseActionController = ActionController(
    name: 'SpendsBase',
    context: context,
  );

  @override
  void increment() {
    final _$actionInfo = _$SpendsBaseActionController.startAction(
      name: 'SpendsBase.increment',
    );
    try {
      return super.increment();
    } finally {
      _$SpendsBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrement() {
    final _$actionInfo = _$SpendsBaseActionController.startAction(
      name: 'SpendsBase.decrement',
    );
    try {
      return super.decrement();
    } finally {
      _$SpendsBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onManualSet(int newValue) {
    final _$actionInfo = _$SpendsBaseActionController.startAction(
      name: 'SpendsBase.onManualSet',
    );
    try {
      return super.onManualSet(newValue);
    } finally {
      _$SpendsBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
