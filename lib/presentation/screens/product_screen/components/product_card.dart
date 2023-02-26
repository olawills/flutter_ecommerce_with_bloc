import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_with_bloc/presentation/screens/product_screen/product_screen.dart';
import 'package:flutter_ecommerce_with_bloc/theme/colors.dart';

import '../../../../imports/models_export.dart';

class ProductCard extends StatelessWidget {
  final Product products;
  final double widthFactor;
  final double leftPosition;
  final bool isFavorite;
  const ProductCard({
    Key? key,
    required this.products,
    this.widthFactor = 2.5,
    this.leftPosition = 5,
    this.isFavorite = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width / widthFactor;
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          ProductsScreen.routeName,
          arguments: products,
        );
      },
      child: Stack(
        children: [
          Container(
            width: width,
            height: 150,
            child: CachedNetworkImage(
              imageUrl: products.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 60,
            left: leftPosition,
            child: Container(
              width: width - 5 - leftPosition,
              height: 80,
              decoration: BoxDecoration(
                color: blackColor.withAlpha(50),
              ),
            ),
          ),
          Positioned(
            top: 65,
            left: leftPosition + 5,
            child: Container(
              width: width - 15 - leftPosition,
              height: 80,
              decoration: const BoxDecoration(
                color: blackColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            products.name,
                            style:
                                Theme.of(context).textTheme.headline5!.copyWith(
                                      color: whiteColor,
                                    ),
                          ),
                          Text(
                            '${products.price}',
                            style:
                                Theme.of(context).textTheme.headline5!.copyWith(
                                      color: whiteColor,
                                    ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add_circle,
                          color: whiteColor,
                        ),
                      ),
                    ),
                    isFavorite
                        ? Expanded(
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.delete,
                                color: whiteColor,
                              ),
                            ),
                          )
                        : const SizedBox(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
