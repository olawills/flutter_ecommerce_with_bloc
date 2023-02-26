import 'package:equatable/equatable.dart';

import '../imports/models_export.dart';

class Favorites extends Equatable {
  final List<Product> products;

  const Favorites({this.products = const <Product>[]});

  @override
  List<Object?> get props => [products];
}
