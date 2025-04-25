// ignore_for_file: avoid_print

import 'package:first/menu.dart';
import 'package:first/cart.dart';

class Backend {
  List<Dish> menuDishes = [
    Dish(
      id: 1,
      name: 'Veg Burger',
      price: 150,
      description: 'Crunchy vegetable patty with lettuce, tomato, and mayo',
    ),
    Dish(
      id: 2,
      name: 'Delight Burger',
      price: 200,
      description:
          'Paneer or veggie patty with melted cheddar and garlic mayo.',
    ),
    Dish(
      id: 3,
      name: 'Inferno Burger',
      price: 300,
      description: 'bean patty with jalapeños, spicy mayo, and onions',
    ),
    Dish(
      id: 4,
      name: 'Cheese Burger',
      price: 250,
      description: 'Corn and cheese patty with lettuce and tangy sauce.',
    ),
    Dish(
      id: 5,
      name: 'Mushroom Melt Burger',
      price: 350,
      description: 'Corn and cheese patty with lettuce and tangy sauce.',
    ),
    Dish(
      id: 6,
      name: 'Grilled Sandwich ',
      price: 200,
      description: 'Grilled paneer, tomatoes, and mint chutney.',
    ),
    Dish(
      id: 7,
      name: 'Cheese Sandwich',
      price: 250,
      description: 'Corn and cheese patty with lettuce and tangy sauce.',
    ),
    Dish(
      id: 8,
      name: 'Avocado Sandwich',
      price: 400,
      description: 'Creamy hummus, avocado, and fresh veggies.',
    ),
  ];
  List<Cart> cartItems = [];

  void displayMenu() {
    print('Please select the dish you want to order...');
    for (Dish dish in menuDishes) {
      dish.printDish();
    }
  }

  int checkQuantity(int id) {
    for (Cart item in cartItems) {
      if (item.id == id) {
        if (item.quantity != 0) {
          return 1;
        }
      }
    }
    return 0;
  }

  void addToCart(int id) {
    for (Dish dish in menuDishes) {
      if (dish.id == id && checkQuantity(id) == 0) {
        cartItems.add(
          Cart(id: id, name: dish.name, price: dish.price, quantity: 1),
        );
      } else if (dish.id == id) {
        for (Cart item in cartItems) {
          if (item.id == id) {
            item.quantity++;
          }
        }
      }
    }
  }

  void displayCart() {
    print('............................................');
    print('Orders in Cart:\n');
    for (Cart item in cartItems) {
      print('${item.name}...₹${item.price}...[${item.quantity}]\n');
    }
    print('Press "X" to place order');
    print('............................................');
  }

  void totalPrice() {
    double total = 0;
    for (Cart item in cartItems) {
      total += item.price * item.quantity;
    }
    print('Your bill: ₹$total');
  }
}
