import '../_core_exports.dart';

class CartManager {
  static final CartManager _instance = CartManager._internal();
  factory CartManager() => _instance;
  CartManager._internal();

  final List<ProductModel> _cartItems = [];

  List<ProductModel> get items => _cartItems;

  void addItem(ProductModel product) {
    _cartItems.add(product);
  }

  void clearCart() {
    _cartItems.clear();
  }

  void removeItem(ProductModel product) {
    _cartItems.remove(product);
  }
}
