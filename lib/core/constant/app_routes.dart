import '../../feature/_feature_exports.dart';
import '../_core_exports.dart';

class AppRoutes {
  static const String discover = "/";
  static const String detail = "/detail";
  static const String cart = "/cart";

  // Main
  static Map<String, WidgetBuilder> get routes => {
    discover: (context) => const DiscoverPage(),
    detail: (context) => const ProductDetailPage(),
    cart: (context) => const CartPage(),
  };
}
