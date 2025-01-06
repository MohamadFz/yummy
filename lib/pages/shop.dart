import '../models/food.dart';

class Shop {
  final List<Food> _foodmenu = [
    Food(
        name: "Hot Dog",
        price: "20.00",
        imagePath: "lib/images/hotdog.png",
        rating: "4.0"),
    Food(
        name: "Kebab",
        price: "12.00",
        imagePath: "lib/images/kebab.png",
        rating: "4.5"),
    Food(
        name: "Pizza",
        price: "25.00",
        imagePath: "lib/images/pizza.png",
        rating: "5.0")
  ];

  // Customer Cart
  List<Food> _cart = [];

  // Getter method
  List<Food> get foodmenu => _foodmenu;
  List<Food> get cart => _cart;

  // Add to cart
  void addToCart(Food foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
  }

  //Remove from the cart
  void removeFromCart(Food food) {
    _cart.remove(food);
  }
}
