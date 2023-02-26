import 'package:equatable/equatable.dart';
import '../../imports/bloc_exports.dart';
import '../../imports/models_export.dart';
part 'favorites_event.dart';
part 'favorites_state.dart';

class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  FavoritesBloc() : super(FavoriteLoading()) {
    on<StartFavoritesList>((event, emit) {});
    on<AddFavoritesProduct>((event, emit) {});
    @override
    Stream<FavoritesState> mapEventToState(
      FavoritesEvent event,
    ) async* {
      if (event is StartFavoritesList) {
        yield* _mapStartFavoriteListToState();
      } else if (event is AddFavoritesProduct) {
        yield* _mapAddFavoriteListToState(event, state);
      } else if (event is RemoveFavoritesProduct) {
        yield* _mapRemoveFavoriteListToState(event, state);
      }
    }
  }
  Stream<FavoritesState> _mapStartFavoriteListToState() async* {
    yield FavoriteLoading();
    try {
      await Future<void>.delayed(const Duration(seconds: 1));
    } catch (_) {}
  }

  Stream<FavoritesState> _mapAddFavoriteListToState(
    AddFavoritesProduct event,
    FavoritesState state,
  ) async* {
    if (state is FavoriteLoaded) {
      try {
        yield FavoriteLoaded(
          favorites: Favorites(
            products: List.from(state.favorites.products)..add(event.product),
          ),
        );
      } catch (_) {}
    }
  }

  Stream<FavoritesState> _mapRemoveFavoriteListToState(
    RemoveFavoritesProduct event,
    FavoritesState state,
  ) async* {
    if (state is FavoriteLoaded) {
      try {
        yield FavoriteLoaded(
          favorites: Favorites(
            products: List.from(state.favorites.products)
              ..remove(event.product),
          ),
        );
      } catch (_) {}
    }
  }
}
