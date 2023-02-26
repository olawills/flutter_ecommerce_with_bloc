import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../../imports/models_export.dart';
import '../../../imports/widgets_export.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home_screen';
  static Route route() {
    return MaterialPageRoute(
      builder: (context) => const HomeScreen(),
    );
  }

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: 'Zero To Unicorn',
      ),
      bottomNavigationBar: const CustomNavbar(),
      body: Column(
        children: [
          Container(
              child: CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 1.5,
              viewportFraction: 0.9,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
            ),
            items: Category.categories
                .map((category) => ImageSlider(category: category))
                .toList(),
          )),
          const SectionTitle(title: 'RECOMMENDED'),
          ProductCarousel(
            products: Product.products
                .where((product) => product.isRecommend)
                .toList(),
          ),
          const SectionTitle(title: 'MOST POPULAR'),
          ProductCarousel(
            products:
                Product.products.where((product) => product.isPopular).toList(),
          ),
        ],
      ),
    );
  }
}
