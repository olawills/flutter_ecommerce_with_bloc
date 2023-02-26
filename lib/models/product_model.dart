import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isRecommend;
  final bool isPopular;

  const Product({
    required this.name,
    required this.category,
    required this.imageUrl,
    this.price = 0.0,
    required this.isPopular,
    required this.isRecommend,
  });

  @override
  List<Object?> get props => [
        name,
        category,
        imageUrl,
        price,
        isPopular,
        isRecommend,
      ];

  static List<Product> products = [
    const Product(
      name: 'Soft Drink #1',
      category: 'Soft Drinks',
      imageUrl:
          'https://images.unsplash.com/photo-1533007716222-4b465613a984?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8c29mdCUyMGRyaW5rc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60',
      price: 2.99,
      isRecommend: true,
      isPopular: true,
    ),
    const Product(
      name: 'Soft Drink #2',
      category: 'Smoothies',
      imageUrl:
          'https://plus.unsplash.com/premium_photo-1675011652880-9e2289532ecd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fFNtb290aGllc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60',
      price: 2.99,
      isRecommend: true,
      isPopular: true,
    ),
    const Product(
      name: 'Soft Drink #3',
      category: 'Water',
      imageUrl:
          'https://plus.unsplash.com/premium_photo-1675011652850-747fbcd962af?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjl8fFNtb290aGllc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60',
      price: 2.99,
      isRecommend: true,
      isPopular: false,
    ),
    const Product(
      name: 'Soft Drink #4',
      category: 'Soft Drinks',
      imageUrl:
          'https://images.unsplash.com/photo-1533007716222-4b465613a984?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8c29mdCUyMGRyaW5rc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60',
      price: 2.99,
      isRecommend: false,
      isPopular: true,
    ),
    const Product(
      name: 'Soft Drink #5',
      category: 'Smoothies',
      imageUrl:
          'https://images.unsplash.com/photo-1533007716222-4b465613a984?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8c29mdCUyMGRyaW5rc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60',
      price: 2.99,
      isRecommend: false,
      isPopular: true,
    ),
  ];
}
