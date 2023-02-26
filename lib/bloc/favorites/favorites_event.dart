part of 'favorites_bloc.dart';

abstract class FavoritesEvent extends Equatable {
  const FavoritesEvent();

  @override
  List<Object> get props => [];
}

class StartFavoritesList extends FavoritesEvent {}

class AddFavoritesProduct extends FavoritesEvent {
  final Product product;

  const AddFavoritesProduct({required this.product});

  @override
  List<Object> get props => [product];
}

class RemoveFavoritesProduct extends FavoritesEvent {
  final Product product;
  const RemoveFavoritesProduct({required this.product});
  @override
  List<Object> get props => [product];
}
