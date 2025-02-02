import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_all/src/screens/main_application/navigation_pages/home/home_subviews/products_grid_view.dart';
import 'package:shop_all/src/screens/main_application/navigation_pages/home/main_home_view.dart';
import 'package:shop_all/src/utils/constants/strings/text_strings.dart';
import 'package:shop_all/src/utils/functions/helper_functions.dart';
import 'package:shop_all/src/widgets/custom_widgets/appbar.dart';
import 'package:shop_all/src/widgets/custom_widgets/product_card.dart';

class FavoriteDestinationView extends StatelessWidget {
  const FavoriteDestinationView({super.key});

  @override
  Widget build(BuildContext context) {
    final inDarkMode = isInDarkMode(context);

    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          favoriteProductsString,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          IconButton(
            onPressed: () => Get.to(() => const HomeDestinationView()),
            icon: const Icon(Iconsax.add)
          )
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            ProductsGridView(
              crossAxisCount: 2,
              itemCount: 10,
              itemBuilder: (_, gridIndex){
                return const CustomProductCard1();
              },
            )
          ]
        ),
      )
    );
  }
}