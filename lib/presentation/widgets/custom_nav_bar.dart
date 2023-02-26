import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_with_bloc/imports/exports.dart';
import 'package:flutter_ecommerce_with_bloc/theme/colors.dart';
import 'package:flutter_ecommerce_with_bloc/utils/navigation_router.dart';

class CustomNavbar extends StatelessWidget {
  const CustomNavbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: blackColor,
      child: Container(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                routePage(context: context, routeName: HomeScreen.routeName);
              },
              icon: const Icon(
                Icons.home,
                color: whiteColor,
              ),
            ),
            IconButton(
              onPressed: () {
                routePage(context: context, routeName: CartScreen.routeName);
              },
              icon: const Icon(
                Icons.shopping_cart,
                color: whiteColor,
              ),
            ),
            IconButton(
              onPressed: () {
                routePage(context: context, routeName: ProductsScreen.routeName);
              },
              icon: const Icon(
                Icons.person,
                color: whiteColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
