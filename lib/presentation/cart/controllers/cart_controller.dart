import 'package:get/get.dart';
import 'package:nike_app/presentation/cart/widgets/item_cart_widget.dart';

class CartController extends GetxController {
  List<ItemCartWidget> cartItems = [
    ItemCartWidget(
      imagePath: 'assets/images/home_images/image_cart1.png',
      itemName: 'Nike Club Max',
      price: 'Rp 584.950',
    ),
    ItemCartWidget(
      imagePath: 'assets/images/home_images/image_cart2.png',
      itemName: 'Nike Air Max 200',
      price: 'Rp 940.500',
    ),
    ItemCartWidget(
      imagePath: 'assets/images/home_images/image_cart3.png',
      itemName: 'Nike Air Max 270 Essential',
      price: 'Rp 740.950',
    ),
  ];
}
