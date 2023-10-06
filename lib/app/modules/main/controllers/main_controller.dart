import 'package:ecommerce_app/app/modules/main/views/home_view.dart';
import 'package:ecommerce_app/app/modules/main/views/cart_view.dart';
import 'package:ecommerce_app/app/modules/main/views/wallet_view.dart';
import 'package:ecommerce_app/app/modules/main/views/wishlist_view.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  List pages = const [
    HomeView(),
    WishlistView(),
    CartView(),
    WalletView(),
  ];
}
