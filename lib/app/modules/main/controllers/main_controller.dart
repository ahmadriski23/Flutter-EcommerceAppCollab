import 'package:ecommerce_app/app/modules/cart/bindings/cart_binding.dart';
import 'package:ecommerce_app/app/modules/cart/views/cart_view.dart';
import 'package:ecommerce_app/app/modules/home/bindings/home_binding.dart';
import 'package:ecommerce_app/app/modules/home/views/home_view.dart';
import 'package:ecommerce_app/app/modules/wallet/bindings/wallet_binding.dart';
import 'package:ecommerce_app/app/modules/wallet/views/wallet_view.dart';
import 'package:ecommerce_app/app/modules/wishlist/bindings/wishlist_binding.dart';
import 'package:ecommerce_app/app/modules/wishlist/views/wishlist_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  var isDrawerOpen = false.obs;
  var scaffoldKey = GlobalKey<ScaffoldState>();

  void openDrawer() {
    scaffoldKey.currentState!.openDrawer();
  }

  void closeDrawer() {
    scaffoldKey.currentState!.openEndDrawer();
  }

  Route? onGenerateRoute(RouteSettings settings) {
    if (settings.name == '/home') {
      return GetPageRoute(
        settings: settings,
        page: () => HomeView(),
        binding: HomeBinding(),
      );
    }
    if (settings.name == '/wishlist') {
      return GetPageRoute(
        settings: settings,
        page: () => const WishlistView(),
        binding: WishlistBinding(),
      );
    }
    if (settings.name == '/cart') {
      return GetPageRoute(
        settings: settings,
        page: () => const CartView(),
        binding: CartBinding(),
      );
    }
    if (settings.name == '/wallet') {
      return GetPageRoute(
        settings: settings,
        page: () => const WalletView(),
        binding: WalletBinding(),
      );
    }

    return null;
  }
}
