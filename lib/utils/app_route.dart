import 'package:flutter/material.dart';
import '../imports/models_export.dart';
import '../imports/exports.dart';

// final Map<String, WidgetBuilder> routes = {
//   HomeScreen.routeName: (context) => const HomeScreen(),
//   CartScreen.routeName: (context) => const CartScreen(),
//   FavoriteScreen.routeName: (context) => const FavoriteScreen(),
//   CatalogScreen.routeName: (context) => const CatalogScreen(category: ,),
// };

class AppRoute {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/home_screen':
        return HomeScreen.route();
      // case HomeScreen.routeName:
      //   return HomeScreen.route();
      case CartScreen.routeName:
        return CartScreen.route();
      case ProductsScreen.routeName:
        return ProductsScreen.route(product: settings.arguments as Product);
      case CatalogScreen.routeName:
        return CatalogScreen.route(category: settings.arguments as Category);
      case FavoriteScreen.routeName:
        return FavoriteScreen.route();

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: '/'),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
      ),
    );
  }
}
