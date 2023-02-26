import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;

  const Category({
    required this.name,
    required this.imageUrl,
  });

  @override
  List<Object?> get props => [name, imageUrl];

  static List<Category> categories = [
    const Category(
      imageUrl:
          'https://images.unsplash.com/photo-1629059042675-ce386c84cebf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      name: 'Soft Drink',
    ),
    const Category(
      imageUrl:
          'https://images.unsplash.com/photo-1604298331663-de303fbc7059?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fFNtb290aGllc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60',
      name: 'Smoothies',
    ),
    const Category(
      imageUrl:
          'https://images.unsplash.com/photo-1560847468-5eef330f455a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      name: 'Water',
    ),
  ];
}
