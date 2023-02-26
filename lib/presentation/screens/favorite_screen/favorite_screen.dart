import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_with_bloc/bloc/favorites/favorites_bloc.dart';
import '../../../imports/bloc_exports.dart';
import '../../../imports/models_export.dart';
import '../../../imports/widgets_export.dart';

class FavoriteScreen extends StatelessWidget {
  static const String routeName = '/favorite_screen';
  static Route route() {
    return MaterialPageRoute(
      builder: (context) => const FavoriteScreen(),
    );
  }

  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: 'Favorites',
      ),
      bottomNavigationBar: const CustomNavbar(),
      body: BlocBuilder<FavoritesBloc, FavoritesState>(
        builder: (context, state) {
          if (state is FavoriteLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is FavoriteLoaded) {
            return GridView.builder(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 16,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 2.4,
              ),
              itemCount: state.favorites.products.length,
              itemBuilder: (BuildContext context, int index) {
                return Center(
                  child: ProductCard(
                    products: state.favorites.products[index],
                    widthFactor: 1.1,
                    leftPosition: 100,
                    isFavorite: true,
                  ),
                );
              },
            );
          } else {
            return const Text(
              'Something went wrong',
            );
          }
        },
      ),
    );
  }
}
