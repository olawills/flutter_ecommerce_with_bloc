import 'package:flutter/material.dart';
import '../../../imports/widgets_export.dart';

class CartScreen extends StatelessWidget {
  static const String routeName = '/cart_screen';
  static Route route() {
    return MaterialPageRoute(
      builder: (context) => const CartScreen(),
    );
  }

  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: 'Cart ',
      ),
      bottomNavigationBar: const CustomNavbar(),
      body: Container(),
    );
  }
}
