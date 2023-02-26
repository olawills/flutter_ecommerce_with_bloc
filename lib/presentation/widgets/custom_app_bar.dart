import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_with_bloc/imports/exports.dart';
import 'package:flutter_ecommerce_with_bloc/theme/colors.dart';
import 'package:flutter_ecommerce_with_bloc/utils/navigation_router.dart';

class CustomAppbar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  const CustomAppbar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Container(
          color: Colors.black,
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline2!.copyWith(
                  color: whiteColor,
                ),
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            onPressed: () {
              routePage(
                context: context,
                routeName: FavoriteScreen.routeName,
              );
            },
            icon: const Icon(Icons.favorite),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}
