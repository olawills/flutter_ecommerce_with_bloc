part of 'favorites_bloc.dart';

abstract class FavoritesState extends Equatable {
  const FavoritesState();

  @override
  List<Object> get props => [];
}

class FavoriteLoading extends FavoritesState {}

class FavoriteLoaded extends FavoritesState {
  final Favorites favorites;

  const FavoriteLoaded({this.favorites = const Favorites()});

   @override
  List<Object> get props => [favorites];
}

class FavoriteError extends FavoritesState {}
