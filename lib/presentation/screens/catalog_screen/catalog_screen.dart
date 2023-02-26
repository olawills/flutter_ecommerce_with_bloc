import 'package:flutter/material.dart';
import '../../../imports/models_export.dart';
import '../../../imports/widgets_export.dart';

class CatalogScreen extends StatelessWidget {
  final Category category;
  static const String routeName = '/catalog_screen';

  static Route route({required Category category}) {
    return MaterialPageRoute(
      builder: (context) => CatalogScreen(category: category),
    );
  }

  const CatalogScreen({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Product> categoryProducts = Product.products
        .where((product) => product.category == category.name)
        .toList();
    return Scaffold(
      appBar: CustomAppbar(
        title: category.name,
      ),
      bottomNavigationBar: const CustomNavbar(),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 16,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.15,
        ),
        itemCount: categoryProducts.length,
        itemBuilder: (BuildContext context, int index) {
          return ProductCard(
            products: categoryProducts[index],
            widthFactor: 2.2,
          );
        },
      ),
    );
  }
}
