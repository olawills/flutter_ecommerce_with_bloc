import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_with_bloc/bloc/favorites/favorites_bloc.dart';
import 'package:flutter_ecommerce_with_bloc/imports/bloc_exports.dart';
import 'package:flutter_ecommerce_with_bloc/theme/app_themes/theme.dart';
import 'package:flutter_ecommerce_with_bloc/utils/app_route.dart';

import 'imports/exports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => FavoritesBloc()..add(StartFavoritesList()))
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ecommerce With Bloc',
        theme: theme(),
        onGenerateRoute: AppRoute.onGenerateRoute,
        initialRoute: HomeScreen.routeName,
      ),
    );
  }
}
