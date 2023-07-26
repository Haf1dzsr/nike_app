import 'package:get/get.dart';
import 'package:nike_app/presentation/home/widgets/category_widget.dart';
import 'package:nike_app/presentation/home/widgets/popular_shoes_widget.dart';

class HomeController extends GetxController {
  // 3D Drawer
  double xOffset = 0;
  double yOffset = 0;
  bool isDrawerOpen = false;

  void tapped() {
    xOffset = 170;
    yOffset = 150;
    isDrawerOpen = true;
    update();
  }

  void unTapped() {
    xOffset = 0;
    yOffset = 0;
    isDrawerOpen = false;
    update();
  }

  // Category
  RxList<CategoryWidget> categoryList = [
    CategoryWidget(
      category: 'All Shoes',
      isSelected: false,
    ),
    CategoryWidget(
      category: 'Outdoor',
      isSelected: true,
    ),
    CategoryWidget(
      category: 'Tennis',
      isSelected: false,
    ),
  ].obs;

  void changeContainerColor(int index) {
    for (int i = 0; i < categoryList.length; i++) {
      if (i == index) {
        categoryList[i].isSelected = !categoryList[i].isSelected;
      } else {
        categoryList[i].isSelected = false;
      }
    }
    update();
  }

  // Popular Shoes
  RxList<PopularShoesWidget> shoesList = [
    PopularShoesWidget(
      imagePath: 'assets/images/home_images/nike_jordan.png',
      name: 'Nike Jordan',
      price: 'Rp 302.000',
      isFavorited: false,
    ),
    PopularShoesWidget(
      imagePath: 'assets/images/home_images/nike_airmax.png',
      name: 'Nike Air Max',
      price: 'Rp 752.000',
      isFavorited: true,
    ),
  ].obs;

  void favoritedStatus(int index) {
    shoesList[index].isFavorited = !shoesList[index].isFavorited!;
    update();
  }
}
