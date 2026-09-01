import 'package:flutter_app/local/injection/models/cart_entity.dart';
import 'package:flutter_app/local/injection/models/product_entity.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'cart_store.g.dart';

@singleton
class CartStore = CartStoreBase with _$CartStore;

abstract class CartStoreBase with Store {
  @observable
  CartEntity cart = CartEntity.empty();

  @action
  void addProduct(ProductEntity newProduct, double desconto, double acrescimo) {
    final subtotal = cart.quantidade * newProduct.preco;
    final total = subtotal - desconto + acrescimo;

    cart = CartEntity(
      product: newProduct,
      quantidade: cart.quantidade,
      total: total,
      subtotal: subtotal,
      desconto: desconto,
      acrescimo: acrescimo,
    );
  }

  @action
  void removeProduct() {
    cart = CartEntity.empty();
  }

  @action
  void incrementQuantity() {
    final newQuantity = cart.quantidade + 1;
    final subtotal = newQuantity * cart.product.preco;
    final total = subtotal - cart.desconto + cart.acrescimo;

    cart = CartEntity(
      product: cart.product,
      quantidade: newQuantity,
      total: total,
      subtotal: subtotal,
      desconto: cart.desconto,
      acrescimo: cart.acrescimo,
    );
  }

  @action
  void decrementQuantity() {
    final newQuantity = cart.quantidade - 1;
    if (newQuantity < 0) return;
    final subtotal = newQuantity * cart.product.preco;
    final total = subtotal - cart.desconto + cart.acrescimo;

    cart = CartEntity(
      product: cart.product,
      quantidade: newQuantity,
      total: total,
      subtotal: subtotal,
      desconto: cart.desconto,
      acrescimo: cart.acrescimo,
    );
  }
}
